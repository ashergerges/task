part of 'statistics_cubit.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial({
    @Default([]) List<OrderItem> orders,
    @Default(0) double avgPrice,
    @Default(0) int returnsNum,

}) = _Initial;
}
