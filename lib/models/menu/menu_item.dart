library menu_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'menu_item.g.dart';

abstract class MenuItem implements Built<MenuItem, MenuItemBuilder> {
  MenuItem._();

  factory MenuItem([Function(MenuItemBuilder b) updates]) = _$MenuItem;
  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'image_id')
  String get imageId;

  @nullable
  @BuiltValueField(wireName: 'price')
  BuiltList<MenuItemPrice> get price;

  @nullable
  @BuiltValueField(wireName: 'version')
  String get version;
  String toJson() {
    return json.encode(serializers.serializeWith(MenuItem.serializer, this));
  }

  static MenuItem fromJson(String jsonString) {
    return serializers.deserializeWith(MenuItem.serializer, json.decode(jsonString));
  }

  static Serializer<MenuItem> get serializer => _$menuItemSerializer;
}

abstract class MenuItemPrice implements Built<MenuItemPrice, MenuItemPriceBuilder> {
  MenuItemPrice._();

  factory MenuItemPrice([Function(MenuItemPriceBuilder b) updates]) = _$MenuItemPrice;
  @nullable
  @BuiltValueField(wireName: 'amount')
  String get amount;

  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'price_currency')
  String get priceCurrency;
  String toJson() {
    return json.encode(serializers.serializeWith(MenuItemPrice.serializer, this));
  }

  static MenuItemPrice fromJson(String jsonString) {
    return serializers.deserializeWith(MenuItemPrice.serializer, json.decode(jsonString));
  }

  static Serializer<MenuItemPrice> get serializer => _$menuItemPriceSerializer;
}
