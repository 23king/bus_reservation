package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.repository.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class TravelServiceImpl implements TravelService {

    @Autowired
    private TravelRepository travelRepository;
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private BusReservationRepository busReservationRepository;
    @Autowired
    private MemberRepository memberRepository;


    @Override
    public void saveTravel(Map<String, Object> travelInfo, Map<String,String[]> params) {
        Travel travel = new Travel();

        List<BusReservation> reservations = new ArrayList<>();

        int busNum = Integer.parseInt(String.valueOf(travelInfo.get("busNum")));


        travel.setDepartureDate(covertToDate(String.valueOf(travelInfo.get("date"))));
        travel.setPrice(Long.parseLong(String.valueOf(travelInfo.get("price"))));
        travel.setLeader(String.valueOf(travelInfo.get("leader")));
        travel.setNotice1(String.valueOf(travelInfo.get("notice1")));
        travel.setNotice2(String.valueOf(travelInfo.get("notice2")));
        travel.setDestination(String.valueOf(travelInfo.get("dest")));
        travel.setBusCount(busNum);


        for (int i = 0; i < busNum; i++) {
            List<String> emptySeats; List<String> multiSeats;
            try {
                emptySeats = Optional.ofNullable(Arrays.asList((String[])params.get("emptyList["+(i+1)+"][]"))).orElse(Collections.EMPTY_LIST);
            } catch(Exception e) {
                emptySeats = Collections.EMPTY_LIST;
            }

            try {
                multiSeats = Optional.ofNullable(Arrays.asList((String[])params.get("multiList["+(i+1)+"][]"))).orElse(Collections.EMPTY_LIST);
            } catch(Exception e) {
                multiSeats = Collections.EMPTY_LIST;
            }


            for(int k = 1; k <= 45; k ++){
                BusReservation busReservation = new BusReservation();
                busReservation.setBusNum(i);
                busReservation.setSeatNum(k);
                busReservation.setStatus(1);
                if(emptySeats.contains(String.valueOf(k)))
                    busReservation.setStatus(9);

                if(multiSeats.contains(String.valueOf(k)))
                    busReservation.setTwinSeat(true);
                busReservation.setTravel(travel);
                reservations.add(busReservation);
            }
        }

        travel.setBuses(reservations);

        travelRepository.save(travel);
    }

    @Override
    @Transactional
    public long reserveTravel(Map<String, Object> travelInfo, Map<String,String[]> params) {
        /**
         *  1. 회원검색
         *   - > 없으면 insert
         *  2. ReservationDetail 세팅
         *  3. Bus 좌석 수정
         */

        Travel travel = travelRepository.findOne(Long.parseLong(String.valueOf(travelInfo.get("travel_id"))));


        User user;
        user = memberRepository.findByUserIdAndUserNameAndUserPhone(
                String.valueOf(travelInfo.get("userId")),
                String.valueOf(travelInfo.get("userName")),
                String.valueOf(travelInfo.get("phoneNum")));
        if(user == null) {
            user = new User();
            user.setUserId(String.valueOf(travelInfo.get("userId")));
            user.setUserName(String.valueOf(travelInfo.get("userName")));
            user.setUserPhone(String.valueOf(travelInfo.get("phoneNum")));

            user = memberRepository.save(user);
        }


        BusReservationDetail insertDetail = new BusReservationDetail();
        insertDetail.setBusSeatCnt(Integer.parseInt(String.valueOf(travelInfo.get("selectCount"))));
        insertDetail.setBankAccountName(String.valueOf(travelInfo.get("accountName")));
        insertDetail.setReservStatus("0");//입금대기
        insertDetail.setTravel(travel);
        insertDetail.setUser(user);
        insertDetail.setCreateDate(new Date());
        insertDetail.setUpdateDate(new Date());
        BusReservationDetail reservationDetail = busReservationDetailRepository.save(insertDetail);


        List<BusReservation> saveList = new ArrayList<>();
        for (int i = 0; i < travel.getBusCount(); i++) {
            List<String> selectSeats;
            try {
                selectSeats = Optional.ofNullable(Arrays.asList((String[])params.get("selectList["+(i+1)+"][]"))).orElse(Collections.EMPTY_LIST);
            } catch (Exception e) {
                selectSeats = Collections.EMPTY_LIST;
            }


            for(String seat : selectSeats) {
                BusReservation reservation = busReservationRepository.findAllByTravelAndBusNumAndSeatNum(travel, i, Integer.parseInt(seat));
                if(reservation.getStatus() == 3) {
                    throw new RuntimeException("이미 예약된 좌석");
                }
                reservation.setStatus(3);
                reservation.setBusReservationDetail(reservationDetail);
                saveList.add(reservation);
            }
        }

        for(BusReservation bus : saveList) {
            busReservationRepository.save(bus);
        }


        return reservationDetail.getSeq();
    }

    @Override
    public List<Travel> findTravelAll() {
        List<Travel> travels = travelRepository.findAll();
        travels.stream().forEach( v -> {
            v.setReserv_cnt(busReservationRepository.countByTravelAndAndStatusEquals(v, 3));
        });
        return travels;
    }

    @Override
    public void checkSeat(long travel_id) {
        long reserv_cnt = busReservationRepository.countBySeqAndAndStatusEquals(travel_id, 3);

        if(reserv_cnt >= 45)
            throw new RuntimeException("이미 좌석예약이 완료되었습니다");

    }

    @Override
    public Map<String, Object> findTravel(long travel_id) {
        Travel travel = travelRepository.findOne(travel_id);


        Map<String, Object> result = new HashMap<>();
        List<List<String>> busMap = new ArrayList<>();


        List<BusReservation> busSeat
                = travel.getBuses().stream().sorted(Comparator.naturalOrder()).collect(Collectors.toList());

        /*
              9 - 선택 불가
              3 - 예약완료
              2 - 2인좌석
              1 - 선택가능
         */

        for(BusReservation busReservation: busSeat) {
            int busNum = busReservation.getBusNum();
            List<String> busArray;

            try {
                busArray = busMap.get(busNum);
                busMap.remove(busNum);
            } catch (Exception e) {
                busArray = new ArrayList<>();
            }

            if(busReservation.isTwinSeat() && busReservation.getStatus()!=3) {
                busArray.add(busReservation.getSeatNum()-1, "seat_2");
            } else {
                int status = busReservation.getStatus() > 3 ? 3 : busReservation.getStatus();
                busArray.add(busReservation.getSeatNum()-1, "seat_"+String.valueOf(status));
            }
            busMap.add(busNum, busArray);
        }

        travel.setBuses(null);

        result.put("info", travel);
        result.put("busInfo", busMap);

        return result;
    }

    @Override
    public List<BusReservationDetail> findReservListByUser(String userId, String userName, String phoneNum) {
        User user = memberRepository.findByUserIdAndUserNameAndUserPhone(userId, userName, phoneNum);
        if(user == null)
            throw new RuntimeException("사용자 정보가 존재하지 않습니다");

        List<BusReservationDetail> reservList = busReservationDetailRepository.findAllByUser(user);

        for(BusReservationDetail reservation: reservList) {
            List<BusReservation> tempResrv = busReservationRepository.findAllByBusReservationDetail(reservation);
            String seatNum = "";
            int tempBusNum=0;
            for(BusReservation bus: tempResrv) {
                if(bus.getBusNum() == tempBusNum) {
                    if(tempBusNum != 0) {
                        seatNum += ",";
                    }
                    seatNum += ((bus.getBusNum()+1)+"호차 ");
                    tempBusNum++;
                }
                seatNum += bus.getSeatNum();
                if (tempResrv.indexOf(bus) != tempResrv.size()-1) {
                    seatNum += " / ";
                }
            }
            reservation.setSeatNum(seatNum);
            reservation.setTravelInfo(reservation.getTravel());
        }


        return reservList;
    }

    @Override
    public List<Travel> findReservList(Map<String, String> param) {

        return null;
    }

    private Date covertToDate(String date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
        try {
            return format.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


    public Map<String,String> getCompleteData(String revcId) {

        Map<String, String> result = new HashMap<>();

        BusReservationDetail detail = busReservationDetailRepository.findOne(Long.valueOf(revcId));



        Travel travel = detail.getTravel();


        result.put("date", String.valueOf(travel.getDepartureDate()));
        result.put("destination", travel.getDestination());
        result.put("price", String.format("%,d", (travel.getPrice() * detail.getBusSeatCnt())));
        result.put("accountName", detail.getBankAccountName());

        String seatNum = "";
        List<BusReservation> reservation = busReservationRepository.findAllByBusReservationDetail(detail);
        for(BusReservation bus: reservation) {
            seatNum += ((bus.getBusNum()+1)+"호차 "+ bus.getSeatNum());
            if (reservation.indexOf(bus) != reservation.size()-1) {
                seatNum += " / ";
            }
        }

        result.put("seatNum", seatNum);

        return result;

    }


}
