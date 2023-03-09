// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expxnse_tracker/constants/appColor.dart';
import 'package:expxnse_tracker/constants/appImages.dart';
import 'package:expxnse_tracker/global_components/btm_nav_bar/btm_nav_bar.dart';
import 'package:expxnse_tracker/global_components/flow_charts/linechart.dart';
import 'package:expxnse_tracker/models/home_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/line_chart_model.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final data = HomeItms.getdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        leading: Image.asset(AppImages.hamburger),
        title: const Text(
          'Daily Expense Tracker',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(AppImages.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          '\₹1,11,111',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => BtBar(i: 3)));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  fit: StackFit.loose,
                  children: [
                    Positioned(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: LineChartMine(points: lineCharts),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (_, i) {
                  return buildCard(
                      img: data[i].img,
                      price: data[i].price,
                      isDr: data[i].isDr,
                      title: data[i].title);
                })
          ],
        ),
      ),
    );
  }

  Widget buildCard(
      {required String title,
      required String img,
      required String price,
      required bool isDr}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image.asset(img),
              SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                    color: isDr ? AppColor.red : AppColor.green, fontSize: 15),
              ),
            ],
          )),
    );
  }
}
