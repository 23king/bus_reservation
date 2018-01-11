package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.BusReservationRefund;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRefundRepository;
import com.bus.reservation.domain.service.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by donguk on 2018. 1. 4..
 */
@RestController
@RequestMapping(path = "/api/v1")
public class ApiController {
    @Autowired
    private TravelService travelService;
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private BusReservationRefundRepository busReservationRefundRepository;

    @RequestMapping(value="/admin/bus", method= RequestMethod.POST)
    public String saveTravelApply(@RequestParam Map<String, Object> travelInfo, HttpServletRequest request){
        try {
            Map<String,String[]> params = request.getParameterMap();
            travelService.saveTravel(travelInfo, params);
        } catch(Exception e) {
            return "fail";
        }

        return "success";
    }

    @RequestMapping(value="/reservation/seat", method= RequestMethod.POST)
    public Map<String,String> saveSeat(@RequestParam Map<String, Object> travelInfo, HttpServletRequest request){
        Map<String, String> result = new HashMap<>();


        long seq;
        try {
            Map<String,String[]> params = request.getParameterMap();
            seq = travelService.reserveTravel(travelInfo, params);
        } catch(Exception e) {
            System.out.println("[SaveSeat Exception : " + e.getCause() +" ]");
            result.put("status", "fail");
            result.put("message", e.getMessage());
            return result;
        }

        result.put("status", "success");
        result.put("resrv_code", String.valueOf(seq));

        return result;

    }

    @RequestMapping(value="/admin/changeReservStatus", method= RequestMethod.POST)
    public String saveReservStatusApply(@RequestParam Map<String, String> params){
        try {
            BusReservationDetail busReservationDetail =
                    busReservationDetailRepository.findOne(Long.parseLong(params.get("seq")));

            busReservationDetail.setReservStatus(params.get("status"));
            busReservationDetailRepository.save(busReservationDetail);
        } catch(Exception e) {
            return "fail";
        }

        return "success";
    }

    @RequestMapping(value="/admin/changeRefundStatus", method= RequestMethod.POST)
    public String saveRefundStatusApply(@RequestParam Map<String, String> params){
        try {
            BusReservationRefund busReservationRefund =
                    busReservationRefundRepository.findOne(Long.parseLong(params.get("seq")));

            if(params.get("status").equals("3")) {
                busReservationRefund.getReservationDetail().getBusReservationList().stream()
                        .forEach(list -> {
                            list.setStatus(1);
                        });
                busReservationRefund.setRefundCompleteDate(new Date());
            }

            busReservationRefund.setRefundStatus(params.get("status"));
            busReservationRefundRepository.save(busReservationRefund);
        } catch(Exception e) {
            return "fail";
        }

        return "success";
    }
}
