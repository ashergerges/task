import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../../main_common.dart';
import '../data/models/order_item.dart';
import '../data/repositories/interfaces/i_statistics_repository.dart';

part 'statistics_state.dart';
part 'statistics_cubit.freezed.dart';

class StatisticsCubit extends Cubit<StatisticsState> {
  StatisticsCubit() :
        statisticsRepository=getIt<IStatisticsRepository>(),
        super(const StatisticsState.initial());
  final IStatisticsRepository statisticsRepository;

  Future<void> getAllOrders() async {
    await EasyLoading.show();
    var orders =await statisticsRepository.getAllOrders();
    await EasyLoading.dismiss();
    int returnsNum=0;
    double totalPrice=0;
    for(var order in orders){
      if(order.status?.toUpperCase()=="RETURNED"){
        returnsNum+=1;
      }
      log("ddddd:${order.price?.substring(1)}");
      totalPrice += double.tryParse((order.price??"0").replaceAll(RegExp(r'[^\d.]'), '')) ?? 0;
    }
    emit(state.copyWith(orders:orders,avgPrice: (totalPrice/orders.length),returnsNum:returnsNum ));
  }
}
