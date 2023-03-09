// ignore_for_file: prefer_const_constructors

import 'package:expxnse_tracker/constants/appColor.dart';
import 'package:expxnse_tracker/constants/appImages.dart';
import 'package:expxnse_tracker/views/home/home.dart';
import 'package:expxnse_tracker/views/n/n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../views/chart1/chart1.dart';
import 'btm_nav_bar_comps.dart';

class BtBar extends StatefulWidget {
  int i;
  static const String routeName = '/btnNavBar';
  BtBar({super.key, required this.i});

  @override
  State<BtBar> createState() => _BtBarState();
}

class _BtBarState extends State<BtBar> {
  final List pages = [
    const Home(),
    const Chart1(),
    const Home(),
    const N(),
    const Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: pages[widget.i],
      bottomNavigationBar: BottomNavBar(
        i: widget.i,
        onChangedTab: onChangedTab,
      ),
    );
  }

  void onChangedTab(itemIndex) {
    setState(() {
      widget.i = itemIndex;
    });
  }
}
