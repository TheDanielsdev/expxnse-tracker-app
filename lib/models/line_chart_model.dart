import 'package:collection/collection.dart';

class LineChartModel {
  double x;
  double y;
  LineChartModel({required this.x, required this.y});
}

List<LineChartModel> get lineCharts {
  final data = <double>[2, 4, 11, 2, 4, 5, 8];
  return data
      .mapIndexed(
          (index, element) => LineChartModel(x: index.toDouble(), y: element))
      .toList();
}
