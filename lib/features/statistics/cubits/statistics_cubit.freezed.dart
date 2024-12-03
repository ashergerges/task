// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatisticsState {
  List<OrderItem> get orders => throw _privateConstructorUsedError;
  double get avgPrice => throw _privateConstructorUsedError;
  int get returnsNum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<OrderItem> orders, double avgPrice, int returnsNum)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderItem> orders, double avgPrice, int returnsNum)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderItem> orders, double avgPrice, int returnsNum)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsStateCopyWith<StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res, StatisticsState>;
  @useResult
  $Res call({List<OrderItem> orders, double avgPrice, int returnsNum});
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res, $Val extends StatisticsState>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? avgPrice = null,
    Object? returnsNum = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      returnsNum: null == returnsNum
          ? _value.returnsNum
          : returnsNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderItem> orders, double avgPrice, int returnsNum});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? avgPrice = null,
    Object? returnsNum = null,
  }) {
    return _then(_$InitialImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      avgPrice: null == avgPrice
          ? _value.avgPrice
          : avgPrice // ignore: cast_nullable_to_non_nullable
              as double,
      returnsNum: null == returnsNum
          ? _value.returnsNum
          : returnsNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<OrderItem> orders = const [],
      this.avgPrice = 0,
      this.returnsNum = 0})
      : _orders = orders;

  final List<OrderItem> _orders;
  @override
  @JsonKey()
  List<OrderItem> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final double avgPrice;
  @override
  @JsonKey()
  final int returnsNum;

  @override
  String toString() {
    return 'StatisticsState.initial(orders: $orders, avgPrice: $avgPrice, returnsNum: $returnsNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.avgPrice, avgPrice) ||
                other.avgPrice == avgPrice) &&
            (identical(other.returnsNum, returnsNum) ||
                other.returnsNum == returnsNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orders), avgPrice, returnsNum);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<OrderItem> orders, double avgPrice, int returnsNum)
        initial,
  }) {
    return initial(orders, avgPrice, returnsNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderItem> orders, double avgPrice, int returnsNum)?
        initial,
  }) {
    return initial?.call(orders, avgPrice, returnsNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderItem> orders, double avgPrice, int returnsNum)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(orders, avgPrice, returnsNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatisticsState {
  const factory _Initial(
      {final List<OrderItem> orders,
      final double avgPrice,
      final int returnsNum}) = _$InitialImpl;

  @override
  List<OrderItem> get orders;
  @override
  double get avgPrice;
  @override
  int get returnsNum;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
