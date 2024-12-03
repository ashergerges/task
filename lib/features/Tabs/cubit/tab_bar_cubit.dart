import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/features/statistics/ui/screens/chart_screen.dart';
import 'package:task/features/statistics/ui/screens/statistics_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../main_common.dart';
import '../../statistics/data/models/order_item.dart';
import '../../statistics/data/repositories/interfaces/i_statistics_repository.dart';

part 'tab_bar_state.dart';

part 'tab_bar_cubit.freezed.dart';

class TabBarCubit extends Cubit<TabBarState> {
  TabBarCubit() :
        statisticsRepository=getIt<IStatisticsRepository>(),
        super(const TabBarState.tabBarIndex());
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

      totalPrice += double.tryParse((order.price??"0").replaceAll(RegExp(r'[^\d.]'), '')) ?? 0;
    }
    emit(state.copyWith(orders:orders,avgPrice: (totalPrice/orders.length),returnsNum:returnsNum ));
  }
  List navScreens = [
    const StatisticsScreen(),
     ChartScreen(),
  ];

  void selectScreen(int index) {
    emit(state.copyWith(activeScreen: index));
  }
}
