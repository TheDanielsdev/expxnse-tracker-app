import 'package:expxnse_tracker/views/home/body.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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

    return FadeTransition(opacity: a, child: const HomeBody());
  }
}
