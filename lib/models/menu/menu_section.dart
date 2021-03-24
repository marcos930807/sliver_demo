library menu_section;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'menu_item.dart';

part 'menu_section.g.dart';

abstract class MenuSection implements Built<MenuSection, MenuSectionBuilder> {
  MenuSection._();

  factory MenuSection([Function(MenuSectionBuilder b) updates]) = _$MenuSection;

  @nullable
  @BuiltValueField(wireName: 'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: 'section')
  String get section;

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
  @BuiltValueField(wireName: 'menu_sections')
  BuiltList<MenuSection> get menuSections;

  @nullable
  @BuiltValueField(wireName: 'menu_items')
  BuiltList<MenuItem> get menuItems;

  String toJson() {
    return json.encode(serializers.serializeWith(MenuSection.serializer, this));
  }

  static MenuSection fromJson(String jsonString) {
    return serializers.deserializeWith(MenuSection.serializer, json.decode(jsonString));
  }

  static Serializer<MenuSection> get serializer => _$menuSectionSerializer;
}
