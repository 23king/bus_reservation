package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.BusReservationRefund;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRefundRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Map;

@Service
public class BusReservationRefundServiceImpl implements BusReservationRefundService{
    @Autowired
    BusReservationRefundRepository busReservationRefundRepository;

    @Autowired
    BusReservationDetailRepository busReservationDetailRepository;

    @Override
    @Transactional
    public void cancelReservation(Map<String, String> params) {
        BusReservationDetail busReservationDetail = busReservationDetailRepository.findOne(Long.parseLong(params.get("reserv_id")));
        busReservationDetail.setReservStatus("2");

        BusReservationRefund busReservationRefund = new BusReservationRefund();
        busReservationRefund.setRefundStatus("1");
        busReservationRefund.setRefundBankAccount(params.get("refundBankAccount"));
        busReservationRefund.setRefundBankName(params.get("refundBankName"));
        busReservationRefund.setRefundBankNo(params.get("refundBankNo"));
        busReservationRefund.setReservationDetail(busReservationDetail);

        busReservationRefundRepository.save(busReservationRefund);
    }
}
