library menu;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'menu_item.dart';
import 'menu_section.dart';

part 'menu.g.dart';

abstract class Menu implements Built<Menu, MenuBuilder> {
  Menu._();

  factory Menu([Function(MenuBuilder b) updates]) = _$Menu;

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

  String toJson() {
    return json.encode(serializers.serializeWith(Menu.serializer, this));
  }

  static Menu fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(Menu.serializer, map);
  }

  static Serializer<Menu> get serializer => _$menuSerializer;
}
