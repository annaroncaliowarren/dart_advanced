void main() {
  PaymentViaCreditCard nubank = PaymentViaCreditCard();
  PaymentViaDebitCard bb = PaymentViaDebitCard();
  PaymentViaPix pix = PaymentViaPix();
  Checkout paymentCheckout = Checkout();

  paymentCheckout.checkOut(nubank);
  paymentCheckout.checkOut(bb);
  paymentCheckout.checkOut(pix);

  // Checkout payment = Checkout(nubank);
  // print(payment);
}

abstract class Payment {
  payment();
}

class PaymentViaCreditCard implements Payment {
  @override
  void payment() {
    print('Pago com cartão de crédito');
  }
}

class PaymentViaDebitCard implements Payment {
  @override
  void payment() {
    print('Pago com cartão de débito');
  }
}

class PaymentViaPix implements Payment {
  @override
  void payment() {
    print('Pago com PIX');
  }
}

class Checkout {
  checkOut(Payment pay) {
    pay.payment();
  }

  // Payment productPayment;
  // Checkout(this.productPayment);
}
