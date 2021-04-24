// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemStateTearOff {
  const _$ItemStateTearOff();

// ignore: unused_element
  _ItemInit init() {
    return const _ItemInit();
  }

// ignore: unused_element
  _ItemLoadInProgress loading() {
    return const _ItemLoadInProgress();
  }

// ignore: unused_element
  _ItemLoadSuccess success(List<Item> items) {
    return _ItemLoadSuccess(
      items,
    );
  }

// ignore: unused_element
  _ItemError error(
      {@required String imagePath,
      @required String title,
      @required String subtitle}) {
    return _ItemError(
      imagePath: imagePath,
      title: title,
      subtitle: subtitle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemState = _$ItemStateTearOff();

/// @nodoc
mixin _$ItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(List<Item> items),
    @required TResult error(String imagePath, String title, String subtitle),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(List<Item> items),
    TResult error(String imagePath, String title, String subtitle),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_ItemInit value),
    @required TResult loading(_ItemLoadInProgress value),
    @required TResult success(_ItemLoadSuccess value),
    @required TResult error(_ItemError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_ItemInit value),
    TResult loading(_ItemLoadInProgress value),
    TResult success(_ItemLoadSuccess value),
    TResult error(_ItemError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;
}

/// @nodoc
abstract class _$ItemInitCopyWith<$Res> {
  factory _$ItemInitCopyWith(_ItemInit value, $Res Function(_ItemInit) then) =
      __$ItemInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$ItemInitCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemInitCopyWith<$Res> {
  __$ItemInitCopyWithImpl(_ItemInit _value, $Res Function(_ItemInit) _then)
      : super(_value, (v) => _then(v as _ItemInit));

  @override
  _ItemInit get _value => super._value as _ItemInit;
}

/// @nodoc
class _$_ItemInit implements _ItemInit {
  const _$_ItemInit();

  @override
  String toString() {
    return 'ItemState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ItemInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(List<Item> items),
    @required TResult error(String imagePath, String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(List<Item> items),
    TResult error(String imagePath, String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_ItemInit value),
    @required TResult loading(_ItemLoadInProgress value),
    @required TResult success(_ItemLoadSuccess value),
    @required TResult error(_ItemError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_ItemInit value),
    TResult loading(_ItemLoadInProgress value),
    TResult success(_ItemLoadSuccess value),
    TResult error(_ItemError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ItemInit implements ItemState {
  const factory _ItemInit() = _$_ItemInit;
}

/// @nodoc
abstract class _$ItemLoadInProgressCopyWith<$Res> {
  factory _$ItemLoadInProgressCopyWith(
          _ItemLoadInProgress value, $Res Function(_ItemLoadInProgress) then) =
      __$ItemLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ItemLoadInProgressCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemLoadInProgressCopyWith<$Res> {
  __$ItemLoadInProgressCopyWithImpl(
      _ItemLoadInProgress _value, $Res Function(_ItemLoadInProgress) _then)
      : super(_value, (v) => _then(v as _ItemLoadInProgress));

  @override
  _ItemLoadInProgress get _value => super._value as _ItemLoadInProgress;
}

/// @nodoc
class _$_ItemLoadInProgress implements _ItemLoadInProgress {
  const _$_ItemLoadInProgress();

  @override
  String toString() {
    return 'ItemState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ItemLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(List<Item> items),
    @required TResult error(String imagePath, String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(List<Item> items),
    TResult error(String imagePath, String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_ItemInit value),
    @required TResult loading(_ItemLoadInProgress value),
    @required TResult success(_ItemLoadSuccess value),
    @required TResult error(_ItemError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_ItemInit value),
    TResult loading(_ItemLoadInProgress value),
    TResult success(_ItemLoadSuccess value),
    TResult error(_ItemError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ItemLoadInProgress implements ItemState {
  const factory _ItemLoadInProgress() = _$_ItemLoadInProgress;
}

/// @nodoc
abstract class _$ItemLoadSuccessCopyWith<$Res> {
  factory _$ItemLoadSuccessCopyWith(
          _ItemLoadSuccess value, $Res Function(_ItemLoadSuccess) then) =
      __$ItemLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class __$ItemLoadSuccessCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemLoadSuccessCopyWith<$Res> {
  __$ItemLoadSuccessCopyWithImpl(
      _ItemLoadSuccess _value, $Res Function(_ItemLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ItemLoadSuccess));

  @override
  _ItemLoadSuccess get _value => super._value as _ItemLoadSuccess;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_ItemLoadSuccess(
      items == freezed ? _value.items : items as List<Item>,
    ));
  }
}

/// @nodoc
class _$_ItemLoadSuccess implements _ItemLoadSuccess {
  const _$_ItemLoadSuccess(this.items) : assert(items != null);

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'ItemState.success(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemLoadSuccess &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ItemLoadSuccessCopyWith<_ItemLoadSuccess> get copyWith =>
      __$ItemLoadSuccessCopyWithImpl<_ItemLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(List<Item> items),
    @required TResult error(String imagePath, String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(List<Item> items),
    TResult error(String imagePath, String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_ItemInit value),
    @required TResult loading(_ItemLoadInProgress value),
    @required TResult success(_ItemLoadSuccess value),
    @required TResult error(_ItemError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_ItemInit value),
    TResult loading(_ItemLoadInProgress value),
    TResult success(_ItemLoadSuccess value),
    TResult error(_ItemError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ItemLoadSuccess implements ItemState {
  const factory _ItemLoadSuccess(List<Item> items) = _$_ItemLoadSuccess;

  List<Item> get items;
  @JsonKey(ignore: true)
  _$ItemLoadSuccessCopyWith<_ItemLoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$ItemErrorCopyWith<$Res> {
  factory _$ItemErrorCopyWith(
          _ItemError value, $Res Function(_ItemError) then) =
      __$ItemErrorCopyWithImpl<$Res>;
  $Res call({String imagePath, String title, String subtitle});
}

/// @nodoc
class __$ItemErrorCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemErrorCopyWith<$Res> {
  __$ItemErrorCopyWithImpl(_ItemError _value, $Res Function(_ItemError) _then)
      : super(_value, (v) => _then(v as _ItemError));

  @override
  _ItemError get _value => super._value as _ItemError;

  @override
  $Res call({
    Object imagePath = freezed,
    Object title = freezed,
    Object subtitle = freezed,
  }) {
    return _then(_ItemError(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
    ));
  }
}

/// @nodoc
class _$_ItemError implements _ItemError {
  const _$_ItemError(
      {@required this.imagePath, @required this.title, @required this.subtitle})
      : assert(imagePath != null),
        assert(title != null),
        assert(subtitle != null);

  @override
  final String imagePath;
  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'ItemState.error(imagePath: $imagePath, title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemError &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle);

  @JsonKey(ignore: true)
  @override
  _$ItemErrorCopyWith<_ItemError> get copyWith =>
      __$ItemErrorCopyWithImpl<_ItemError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(List<Item> items),
    @required TResult error(String imagePath, String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(imagePath, title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(List<Item> items),
    TResult error(String imagePath, String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(imagePath, title, subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_ItemInit value),
    @required TResult loading(_ItemLoadInProgress value),
    @required TResult success(_ItemLoadSuccess value),
    @required TResult error(_ItemError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_ItemInit value),
    TResult loading(_ItemLoadInProgress value),
    TResult success(_ItemLoadSuccess value),
    TResult error(_ItemError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ItemError implements ItemState {
  const factory _ItemError(
      {@required String imagePath,
      @required String title,
      @required String subtitle}) = _$_ItemError;

  String get imagePath;
  String get title;
  String get subtitle;
  @JsonKey(ignore: true)
  _$ItemErrorCopyWith<_ItemError> get copyWith;
}
