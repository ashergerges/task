import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import '../../models/order_item.dart';
import '../interfaces/i_statistics_repository.dart';

@Injectable(as :IStatisticsRepository)
class StatisticsRepository implements IStatisticsRepository{
  @override
  Future<List<OrderItem>> getAllOrders() async {
    // in constant path
    final String jsonString = await rootBundle.loadString('assets/data/orders.json');

    // Parse the JSON string into a Map
   var data=jsonDecode(jsonString);

    List<OrderItem> orders =
    List<OrderItem>.from(data
        .map((x) => OrderItem.fromJson(x)));

    return orders;
  }

}