import 'package:json_annotation/json_annotation.dart';

part 'order_item.g.dart';
@JsonSerializable()
class OrderItem {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "price")
  String? price;
  @JsonKey(name: "company")
  String? company;
  @JsonKey(name: "picture")
  String? picture;
  @JsonKey(name: "buyer")
  String? buyer;
  @JsonKey(name: "tags")
  List<String>? tags;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "registered")
  String? registered;

  OrderItem({
    this.id,
    this.isActive,
    this.price,
    this.company,
    this.picture,
    this.buyer,
    this.tags,
    this.status,
    this.registered,
  });

  OrderItem copyWith({
    String? id,
    bool? isActive,
    String? price,
    String? company,
    String? picture,
    String? buyer,
    List<String>? tags,
    String? status,
    String? registered,
  }) =>
      OrderItem(
        id: id ?? this.id,
        isActive: isActive ?? this.isActive,
        price: price ?? this.price,
        company: company ?? this.company,
        picture: picture ?? this.picture,
        buyer: buyer ?? this.buyer,
        tags: tags ?? this.tags,
        status: status ?? this.status,
        registered: registered ?? this.registered,
      );

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
