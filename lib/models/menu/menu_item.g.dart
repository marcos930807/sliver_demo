// GENERATED CODE - DO NOT MODIFY BY HAND

part of menu_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuItem> _$menuItemSerializer = new _$MenuItemSerializer();
Serializer<MenuItemPrice> _$menuItemPriceSerializer =
    new _$MenuItemPriceSerializer();

class _$MenuItemSerializer implements StructuredSerializer<MenuItem> {
  @override
  final Iterable<Type> types = const [MenuItem, _$MenuItem];
  @override
  final String wireName = 'MenuItem';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MenuItemPrice)])));
    }
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MenuItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
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
        case 'price':
          result.price.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MenuItemPrice)]))
              as BuiltList<Object>);
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuItemPriceSerializer implements StructuredSerializer<MenuItemPrice> {
  @override
  final Iterable<Type> types = const [MenuItemPrice, _$MenuItemPrice];
  @override
  final String wireName = 'MenuItemPrice';

  @override
  Iterable<Object> serialize(Serializers serializers, MenuItemPrice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priceCurrency;
    if (value != null) {
      result
        ..add('price_currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MenuItemPrice deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemPriceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_currency':
          result.priceCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuItem extends MenuItem {
  @override
  final String type;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageId;
  @override
  final BuiltList<MenuItemPrice> price;
  @override
  final String version;

  factory _$MenuItem([void Function(MenuItemBuilder) updates]) =>
      (new MenuItemBuilder()..update(updates)).build();

  _$MenuItem._(
      {this.type,
      this.id,
      this.name,
      this.description,
      this.imageId,
      this.price,
      this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'MenuItem', 'id');
  }

  @override
  MenuItem rebuild(void Function(MenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemBuilder toBuilder() => new MenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItem &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        imageId == other.imageId &&
        price == other.price &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, type.hashCode), id.hashCode), name.hashCode),
                    description.hashCode),
                imageId.hashCode),
            price.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuItem')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('imageId', imageId)
          ..add('price', price)
          ..add('version', version))
        .toString();
  }
}

class MenuItemBuilder implements Builder<MenuItem, MenuItemBuilder> {
  _$MenuItem _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _imageId;
  String get imageId => _$this._imageId;
  set imageId(String imageId) => _$this._imageId = imageId;

  ListBuilder<MenuItemPrice> _price;
  ListBuilder<MenuItemPrice> get price =>
      _$this._price ??= new ListBuilder<MenuItemPrice>();
  set price(ListBuilder<MenuItemPrice> price) => _$this._price = price;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  MenuItemBuilder();

  MenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _imageId = $v.imageId;
      _price = $v.price?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuItem;
  }

  @override
  void update(void Function(MenuItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuItem build() {
    _$MenuItem _$result;
    try {
      _$result = _$v ??
          new _$MenuItem._(
              type: type,
              id: BuiltValueNullFieldError.checkNotNull(id, 'MenuItem', 'id'),
              name: name,
              description: description,
              imageId: imageId,
              price: _price?.build(),
              version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'price';
        _price?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MenuItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MenuItemPrice extends MenuItemPrice {
  @override
  final String amount;
  @override
  final String type;
  @override
  final String description;
  @override
  final String priceCurrency;

  factory _$MenuItemPrice([void Function(MenuItemPriceBuilder) updates]) =>
      (new MenuItemPriceBuilder()..update(updates)).build();

  _$MenuItemPrice._(
      {this.amount, this.type, this.description, this.priceCurrency})
      : super._();

  @override
  MenuItemPrice rebuild(void Function(MenuItemPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemPriceBuilder toBuilder() => new MenuItemPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemPrice &&
        amount == other.amount &&
        type == other.type &&
        description == other.description &&
        priceCurrency == other.priceCurrency;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), type.hashCode), description.hashCode),
        priceCurrency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuItemPrice')
          ..add('amount', amount)
          ..add('type', type)
          ..add('description', description)
          ..add('priceCurrency', priceCurrency))
        .toString();
  }
}

class MenuItemPriceBuilder
    implements Builder<MenuItemPrice, MenuItemPriceBuilder> {
  _$MenuItemPrice _$v;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _priceCurrency;
  String get priceCurrency => _$this._priceCurrency;
  set priceCurrency(String priceCurrency) =>
      _$this._priceCurrency = priceCurrency;

  MenuItemPriceBuilder();

  MenuItemPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _type = $v.type;
      _description = $v.description;
      _priceCurrency = $v.priceCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItemPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuItemPrice;
  }

  @override
  void update(void Function(MenuItemPriceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuItemPrice build() {
    final _$result = _$v ??
        new _$MenuItemPrice._(
            amount: amount,
            type: type,
            description: description,
            priceCurrency: priceCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
