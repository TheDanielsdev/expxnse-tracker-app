import 'package:expxnse_tracker/constants/appImages.dart';

class HomeData {
  String price;
  String title;
  String img;
  bool isDr;
  HomeData(
      {required this.img,
      required this.price,
      required this.title,
      required this.isDr});
}

class HomeItms {
  static List<HomeData> getdata() {
    return [
      HomeData(
          img: AppImages.wallet,
          price: '+₹6000',
          title: 'Stock Market Profit',
          isDr: false),
      HomeData(
          img: AppImages.netflix,
          price: '+₹6000',
          title: 'Netflix',
          isDr: true),
      HomeData(
          img: AppImages.wallet,
          price: '+₹30000',
          title: 'Salary',
          isDr: false),
      HomeData(
          img: AppImages.spotify, price: '-₹199', title: 'Spotify', isDr: true),
      HomeData(
          img: AppImages.wallet,
          price: '+₹5000',
          title: 'Crypto Profit',
          isDr: false),
    ];
  }
}
