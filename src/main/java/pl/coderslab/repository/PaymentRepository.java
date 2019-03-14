package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.AllPayments;
import pl.coderslab.model.Payment;
import pl.coderslab.model.PaymentDetails;

import java.math.BigDecimal;
import java.util.List;

public interface PaymentRepository extends JpaRepository<Payment, Long> {

    @Query("select new pl.coderslab.model.AllPayments(p.id, p.paymentDate, o.user.id, sum(po.sum)) from Payment p join" +
            " p.order o join o.productInOrders po group by p.id having o.user.id = ?1")
    List<AllPayments> findAllPayments(Long id);

    @Query("select new pl.coderslab.model.PaymentDetails(pay.id, p.id, p.name, p.manufacturer, po.quantity, p.price," +
            " po.sum, o.id, o.orderDate) from Payment pay join pay.order o join o.productInOrders po join po.product" +
            " p where pay.id = ?1")
    List<PaymentDetails> getPaymentDetails(Long id);

    @Query("select sum(po.sum), pay.id from Payment pay join pay.order o join o.productInOrders po group by pay.id having pay.id = ?1")
    BigDecimal getPaymentSum(Long id);

    @Query(value = "select COUNT(*) from payments",nativeQuery = true)
    Integer getNumberOfPayments();
}

