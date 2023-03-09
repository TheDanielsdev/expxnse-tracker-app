import '../constants/appImages.dart';

class Chart1ExpxnseData {
  String price;
  String title;
  String img;

  Chart1ExpxnseData({
    required this.img,
    required this.price,
    required this.title,
  });
}

class Chart1ExpxnseItms {
  static List<Chart1ExpxnseData> getdata() {
    return [
      Chart1ExpxnseData(
        img: AppImages.netflix,
        price: '+₹6000',
        title: 'Netflix',
      ),
      Chart1ExpxnseData(
        img: AppImages.spotify,
        price: '+₹1299',
        title: 'Spotify',
      ),
      Chart1ExpxnseData(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Grocery',
      ),
      Chart1ExpxnseData(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Cold Drinks',
      ),
      Chart1ExpxnseData(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Food',
      ),
      Chart1ExpxnseData(
        img: AppImages.wallet,
        price: '+₹1299',
        title: 'Movies',
      ),
    ];
  }
}
