class PaymentIntentInputModel {
  final String amount, currancy;

  PaymentIntentInputModel({required this.amount, required this.currancy});
  toJson() {
    return {
      "amount": amount,
      "currency": currancy,
    };
  }
}
