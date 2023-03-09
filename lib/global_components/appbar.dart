import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/appColor.dart';
import '../constants/appImages.dart';

class MAppBar extends StatelessWidget {
  const MAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
