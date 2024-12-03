part of 'tab_bar_cubit.dart';

@freezed
class TabBarState with _$TabBarState {
  const factory TabBarState.tabBarIndex({
    @Default(0) int activeScreen,
    @Default([]) List<OrderItem> orders,
    @Default(0) double avgPrice,
    @Default(0) int returnsNum,
  }) = TabBarIndex;
}
