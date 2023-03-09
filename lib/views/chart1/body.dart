import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/appColor.dart';
import '../../constants/appImages.dart';
import '../../global_components/flow_charts/linechart.dart';
import '../../models/chart1_expxnse_data.dart';
import '../../models/chart1_inome_data.dart';
import '../../models/line_chart_model.dart';

class Chart1Body extends StatefulWidget {
  const Chart1Body({super.key});

  @override
  State<Chart1Body> createState() => _Chart1BodyState();
}

class _Chart1BodyState extends State<Chart1Body> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    final data = Chart1Itms.getdata();
    final expData = Chart1ExpxnseItms.getdata();
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
            const SizedBox(
              height: 20,
            ),
            Card(
              clipBehavior: Clip.none,
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.1)),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  controller: tabController,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 50),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text(
                        'INCOME',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'EXPENSE',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: [
              ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (_, i) {
                    return buildCard(
                        img: data[i].img,
                        price: data[i].price,
                        title: data[i].title);
                  }),
              ListView.builder(
                  itemCount: expData.length,
                  itemBuilder: (_, i) {
                    return buildCardExp(
                        img: expData[i].img,
                        price: expData[i].price,
                        title: expData[i].title);
                  })
            ]))
          ],
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required String img,
    required String price,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image.asset(img),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Spacer(),
              Text(
                price,
                style: const TextStyle(color: AppColor.green, fontSize: 15),
              ),
            ],
          )),
    );
  }

  Widget buildCardExp({
    required String title,
    required String img,
    required String price,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image.asset(img),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Spacer(),
              Text(
                price,
                style: const TextStyle(color: AppColor.red, fontSize: 15),
              ),
            ],
          )),
    );
  }
}
