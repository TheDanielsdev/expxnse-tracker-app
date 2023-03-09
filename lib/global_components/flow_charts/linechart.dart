import 'package:expxnse_tracker/models/line_chart_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LineChartMine extends StatefulWidget {
  final List<LineChartModel> points;
  const LineChartMine({super.key, required this.points});

  @override
  State<LineChartMine> createState() => _LineChartMineState();
}

class _LineChartMineState extends State<LineChartMine> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
          swapAnimationDuration: const Duration(milliseconds: 150), // Optional
          swapAnimationCurve: Curves.linear, //
          LineChartData(lineBarsData: [
            LineChartBarData(
                isCurved: true,
                dotData: FlDotData(show: true),
                spots: widget.points.map((e) => FlSpot(e.x, e.y)).toList())
          ])),
    );
  }
}
