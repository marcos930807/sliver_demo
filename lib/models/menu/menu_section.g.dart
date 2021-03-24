// GENERATED CODE - DO NOT MODIFY BY HAND

part of menu_section;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuSection> _$menuSectionSerializer = new _$MenuSectionSerializer();

class _$MenuSectionSerializer implements StructuredSerializer<MenuSection> {
  @override
  final Iterable<Type> types = const [MenuSection, _$MenuSection];
  @override
  final String wireName = 'MenuSection';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuSection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageId;
    if (value != null) {
      result
        ..add('image_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.menuSections;
    if (value != null) {
      result
        ..add('menu_sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MenuSection)])));
    }
    value = object.menuItems;
    if (value != null) {
      result
        ..add('menu_items')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MenuItem)])));
    }
    return result;
  }

  @override
  MenuSection deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_id':
          result.imageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'menu_sections':
          result.menuSections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MenuSection)]))
              as BuiltList<Object>);
          break;
        case 'menu_items':
          result.menuItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MenuItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MenuSection extends MenuSection {
  @override
  final String id;
  @override
  final String type;
  @override
  final String section;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageId;
  @override
  final BuiltList<MenuSection> menuSections;
  @override
  final BuiltList<MenuItem> menuItems;

  factory _$MenuSection([void Function(MenuSectionBuilder) updates]) =>
      (new MenuSectionBuilder()..update(updates)).build();

  _$MenuSection._(
      {this.id,
      this.type,
      this.section,
      this.name,
      this.description,
      this.imageId,
      this.menuSections,
      this.menuItems})
      : super._();

  @override
  MenuSection rebuild(void Function(MenuSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuSectionBuilder toBuilder() => new MenuSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuSection &&
        id == other.id &&
        type == other.type &&
        section == other.section &&
        name == other.name &&
        description == other.description &&
        imageId == other.imageId &&
        menuSections == other.menuSections &&
        menuItems == other.menuItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), type.hashCode),
                            section.hashCode),
                        name.hashCode),
                    description.hashCode),
                imageId.hashCode),
            menuSections.hashCode),
        menuItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuSection')
          ..add('id', id)
          ..add('type', type)
          ..add('section', section)
          ..add('name', name)
          ..add('description', description)
          ..add('imageId', imageId)
          ..add('menuSections', menuSections)
          ..add('menuItems', menuItems))
        .toString();
  }
}

class MenuSectionBuilder implements Builder<MenuSection, MenuSectionBuilder> {
  _$MenuSection _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _imageId;
  String get imageId => _$this._imageId;
  set imageId(String imageId) => _$this._imageId = imageId;

  ListBuilder<MenuSection> _menuSections;
  ListBuilder<MenuSection> get menuSections =>
      _$this._menuSections ??= new ListBuilder<MenuSection>();
  set menuSections(ListBuilder<MenuSection> menuSections) =>
      _$this._menuSections = menuSections;

  ListBuilder<MenuItem> _menuItems;
  ListBuilder<MenuItem> get menuItems =>
      _$this._menuItems ??= new ListBuilder<MenuItem>();
  set menuItems(ListBuilder<MenuItem> menuItems) =>
      _$this._menuItems = menuItems;

  MenuSectionBuilder();

  MenuSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _section = $v.section;
      _name = $v.name;
      _description = $v.description;
      _imageId = $v.imageId;
      _menuSections = $v.menuSections?.toBuilder();
      _menuItems = $v.menuItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuSection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuSection;
  }

  @override
  void update(void Function(MenuSectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuSection build() {
    _$MenuSection _$result;
    try {
      _$result = _$v ??
          new _$MenuSection._(
              id: id,
              type: type,
              section: section,
              name: name,
              description: description,
              imageId: imageId,
              menuSections: _menuSections?.build(),
              menuItems: _menuItems?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menuSections';
        _menuSections?.build();
        _$failedField = 'menuItems';
        _menuItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MenuSection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
