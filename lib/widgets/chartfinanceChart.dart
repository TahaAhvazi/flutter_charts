import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FinanceChartWidget extends StatelessWidget {
  final bool enableAreaColor;
  const FinanceChartWidget({Key? key, required this.enableAreaColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 0,
      height: MediaQuery.of(context).size.height * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 4, // Shadow position
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 320,
            width: 550,
            child: LineChart(
              LineChartData(
                  baselineX: 2,
                  baselineY: 2,
                  backgroundColor: Colors.white,
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      axisNameSize: 12.0,
                      axisNameWidget: const Text(
                        "MONTH",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      drawBehindEverything: true,
                    ),
                    bottomTitles: AxisTitles(
                      axisNameSize: 12.0,
                      axisNameWidget: const Text(
                        "DAY",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      drawBehindEverything: true,
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(2, 4),
                        FlSpot(3, 5),
                      ],
                      color: Colors.red,
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(2, 5),
                        FlSpot(3, 8),
                      ],
                      color: Colors.green,
                      barWidth: 3,
                      isCurved: true,
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(1, 1),
                        FlSpot(1.5, 3),
                        FlSpot(3, 6),
                      ],
                      color: Colors.orange,
                      isStepLineChart: enableAreaColor,
                      shadow: const Shadow(
                        color: Colors.black38,
                        offset: Offset(0, 2),
                      ),
                      show: true,
                    ),
                  ],
                  betweenBarsData: [
                    BetweenBarsData(
                      fromIndex: 0,
                      toIndex: 1,
                      color: Color.fromARGB(157, 255, 153, 0),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
