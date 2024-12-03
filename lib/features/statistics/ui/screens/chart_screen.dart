import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/constants/app_colors.dart';
import 'package:task/core/utils/extensions/padding_extensions.dart';
import 'package:task/features/Tabs/cubit/tab_bar_cubit.dart';

@RoutePage()
class ChartScreen extends StatelessWidget {
  ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, int> dateCount = {};

    // Group orders by date
    return BlocBuilder<TabBarCubit, TabBarState>(
      builder: (context, state) {
        for (var order in state.orders) {
          final registeredDate = DateFormat('yyyy-MM-dd')
              .format(DateTime.parse(order.registered??"").toUtc());
          dateCount[registeredDate] = (dateCount[registeredDate] ?? 0) + 1;
        }

        // Prepare data for the chart
        final List<BarChartGroupData> barGroups = [];
        int index = 0;
        dateCount.forEach((date, count) {
          barGroups.add(
            BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(toY: count.toDouble(), color: AppColors.secondary)
              ],
            ),
          );
          index++;
        });
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: barGroups.length * 80.0,
            child: Padding(
              padding: 20.padHorizontal+100.padBottom+20.padTop,
              child: BarChart(
                BarChartData(
                  barGroups: barGroups,
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, ss) {
                          log("chart::${value}");
                          return Text(dateCount.keys.elementAt(value.toInt()));
                        },
                      ),
                    ),
                    leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: true,)
                    ),
                    rightTitles: const AxisTitles(),
                    topTitles: const AxisTitles()
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
