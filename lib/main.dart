import 'package:expxnse_tracker/global_components/btm_nav_bar/btm_nav_bar.dart';
import 'package:expxnse_tracker/routes/routes.dart';
import 'package:expxnse_tracker/views/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // initialRoute: BtBar.routeName,
      // routes: routes,
      home: BtBar(i: 0),
    );
  }
}
