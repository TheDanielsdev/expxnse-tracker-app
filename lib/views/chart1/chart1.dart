import 'package:expxnse_tracker/views/chart1/body.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Chart1 extends StatefulWidget {
  static const String routeName = '/chart1';
  const Chart1({super.key});
  @override
  State<Chart1> createState() => _Chart1State();
}

class _Chart1State extends State<Chart1> with SingleTickerProviderStateMixin {
  AnimationController? trollr;
  late Animation<double> a;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    trollr = AnimationController(vsync: this, duration: Duration(seconds: 2));
    a = Tween(begin: 0.0, end: 1.0).animate(trollr!);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    trollr!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    trollr!.forward();
    return FadeTransition(opacity: a, child: const Chart1Body());
  }
}
