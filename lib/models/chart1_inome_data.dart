import 'package:expxnse_tracker/constants/appImages.dart';

class Chart1Data {
  String price;
  String title;
  String img;

  Chart1Data({
    required this.img,
    required this.price,
    required this.title,
  });
}

class Chart1Itms {
  static List<Chart1Data> getdata() {
    return [
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹6000',
        title: 'Stock Market Profit',
      ),
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Fiverr',
      ),
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Salary',
      ),
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Youtube',
      ),
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Crypto Profit',
      ),
      Chart1Data(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Cashback',
      ),
    ];
  }
}
