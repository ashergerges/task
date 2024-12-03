
import '../../models/order_item.dart';

abstract class IStatisticsRepository{
  Future<List<OrderItem>> getAllOrders();
}

