import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'menu/menu.dart';
import 'menu/menu_item.dart';
import 'menu/menu_section.dart';

part 'serializers.g.dart';

@SerializersFor([MenuItem, MenuItemPrice, MenuSection, Menu])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(MenuSection)]), () => ListBuilder<MenuSection>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Menu)]), () => ListBuilder<Menu>()))
    .build();
