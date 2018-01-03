package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.repository.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class TravelServiceImpl implements TravelService {

    @Autowired
    private TravelRepository travelRepository;
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
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

            List<String> emptySeats = Optional.ofNullable(Arrays.asList((String[])params.get("emptyList["+(i+1)+"][]"))).orElse(Collections.EMPTY_LIST);
            List<String> multiSeats = Optional.ofNullable(Arrays.asList((String[])params.get("multiList["+(i+1)+"][]"))).orElse(Collections.EMPTY_LIST);

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
    public Travel reserveTravel(Map<String, Object> travelInfo) {


        return null;
    }

    @Override
    public List<Travel> findTravelAll() {
        List<Travel> travels = travelRepository.findAll();
        travels.stream().forEach( v -> {
            v.setReserv_cnt(busReservationDetailRepository.findAllByTravelSeq(v.getSeq()).size());
        });
        return travels;
    }

    @Override
    public void checkSeat(long travel_id) {
        long reserv_cnt = busReservationDetailRepository.countByTravelSeq(travel_id);

        if(reserv_cnt >= 45)
            throw new RuntimeException("이미 좌석예약이 완료되었습니다");

    }

    @Override
    public Map<String, Object> findTravel(long travel_id) {
        Travel travel = travelRepository.findOne(travel_id);


        Map<String, Object> result = new HashMap<>();
        List<List<String>> busMap = new ArrayList<>();


        /*
              9 - 선택 불가
              3 - 예약완료
              2 - 2인좌석
              1 - 선택가능
         */

        for(BusReservation busReservation: travel.getBuses()) {
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
    public List<Travel> findReservListByUser(String userId, String userName, String phoneNum) {
        User user = memberRepository.findByUserIdAndUserNameAndUserPhone(userId, userName, phoneNum);
        if(user == null)
            throw new RuntimeException("사용자 정보가 존재하지 않습니다");

        List<BusReservationDetail> reservList = busReservationDetailRepository.findAllByUser(user);

        List<Travel> travels = travelRepository.findAllByReservations(reservList);
        return travels;
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


}
