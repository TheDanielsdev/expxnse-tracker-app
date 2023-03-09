// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants/appColor.dart';
import '../../constants/appImages.dart';

class BottomNavBar extends StatelessWidget {
  int i;
  final ValueChanged<int> onChangedTab;
  BottomNavBar({super.key, required this.i, required this.onChangedTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildImg(itemIndex: 0, img: AppImages.home),
                  buildImg(itemIndex: 1, img: AppImages.activity),
                  buildImg(itemIndex: 2, img: AppImages.wallet)
                ]),
          ),
        )),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: Container(
            width: 70,
            height: 70,
            child: FloatingActionButton(
                elevation: 10,
                backgroundColor: AppColor.secColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  if (i == 0) return;
                  if (i == 1) return;
                  if (i == 2) {}
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        )
      ],
    );
  }

  Widget buildImg({required int itemIndex, required String img}) {
    final isSelected = itemIndex == i;
    return GestureDetector(
      onTap: () {
        onChangedTab(itemIndex);
        print(itemIndex);
      },
      child: isSelected
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 1,
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: AnimatedContainer(
                    width: 1,
                    height: 25,
                    color: Colors.white,
                    duration: Duration(minutes: 5),
                  ),
                )
              ],
            )
          : Image.asset(
              img,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
    );
  }
}
