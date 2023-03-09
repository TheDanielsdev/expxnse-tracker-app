import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class N extends StatefulWidget {
  const N({super.key});

  @override
  State<N> createState() => _NState();
}

class _NState extends State<N> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  controller: tabController,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                  tabs: const [
                    Tab(
                      child: Text('data'),
                    ),
                    Tab(
                      child: Text('data'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (_, i) {
                  return Center(child: Text("data ${[i]}"));
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (_, i) {
                  return Center(child: Text("data ${[i]}"));
                })
          ]))
        ],
      ),
    );
  }
}
