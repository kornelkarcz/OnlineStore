package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.model.AllPayments;
import pl.coderslab.model.Payment;
import pl.coderslab.model.PaymentDetails;
import pl.coderslab.repository.PaymentRepository;

import java.math.BigDecimal;
import java.util.List;

@Component
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    public void savePayment(Payment payment) {
        paymentRepository.save(payment);
    }

    public List<AllPayments> findAllPayments(Long id) {
        return paymentRepository.findAllPayments(id);
    }

    public List<PaymentDetails> getPaymentDetails(Long id) {
        return paymentRepository.getPaymentDetails(id);
    }

    public BigDecimal getPaymentSum(Long id) {
        return paymentRepository.getPaymentSum(id);
    }
}
