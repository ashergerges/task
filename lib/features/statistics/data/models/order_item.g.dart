// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: json['id'] as String?,
      isActive: json['isActive'] as bool?,
      price: json['price'] as String?,
      company: json['company'] as String?,
      picture: json['picture'] as String?,
      buyer: json['buyer'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      registered: json['registered'] as String?,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'price': instance.price,
      'company': instance.company,
      'picture': instance.picture,
      'buyer': instance.buyer,
      'tags': instance.tags,
      'status': instance.status,
      'registered': instance.registered,
    };
