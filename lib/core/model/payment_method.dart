import 'package:payment_app/core/utils/image_path.dart';

class PaymentMethod {
  PaymentMethod({required this.imagePath});
  String imagePath;

  static List<PaymentMethod> paymentMethodList = [
    PaymentMethod(imagePath: ImagePath.cardImage),
    PaymentMethod(imagePath: ImagePath.paypalImage),
  ];
}
