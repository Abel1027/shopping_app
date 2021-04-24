// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartStateInit init() {
    return const _CartStateInit();
  }

// ignore: unused_element
  _CartLoadInProgress loading() {
    return const _CartLoadInProgress();
  }

// ignore: unused_element
  _CartLoadSuccess success(Cart cart) {
    return _CartLoadSuccess(
      cart,
    );
  }

// ignore: unused_element
  _CartError error({@required String title, @required String subtitle}) {
    return _CartError(
      title: title,
      subtitle: subtitle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(Cart cart),
    @required TResult error(String title, String subtitle),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(Cart cart),
    TResult error(String title, String subtitle),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_CartStateInit value),
    @required TResult loading(_CartLoadInProgress value),
    @required TResult success(_CartLoadSuccess value),
    @required TResult error(_CartError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(_CartStateInit value),
    TResult loading(_CartLoadInProgress value),
    TResult success(_CartLoadSuccess value),
    TResult error(_CartError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$CartStateInitCopyWith<$Res> {
  factory _$CartStateInitCopyWith(
          _CartStateInit value, $Res Function(_CartStateInit) then) =
      __$CartStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartStateInitCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateInitCopyWith<$Res> {
  __$CartStateInitCopyWithImpl(
      _CartStateInit _value, $Res Function(_CartStateInit) _then)
      : super(_value, (v) => _then(v as _CartStateInit));

  @override
  _CartStateInit get _value => super._value as _CartStateInit;
}

/// @nodoc
class _$_CartStateInit implements _CartStateInit {
  const _$_CartStateInit();

  @override
  String toString() {
    return 'CartState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(Cart cart),
    @required TResult error(String title, String subtitle),
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
    TResult success(Cart cart),
    TResult error(String title, String subtitle),
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
    @required TResult init(_CartStateInit value),
    @required TResult loading(_CartLoadInProgress value),
    @required TResult success(_CartLoadSuccess value),
    @required TResult error(_CartError value),
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
    TResult init(_CartStateInit value),
    TResult loading(_CartLoadInProgress value),
    TResult success(_CartLoadSuccess value),
    TResult error(_CartError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _CartStateInit implements CartState {
  const factory _CartStateInit() = _$_CartStateInit;
}

/// @nodoc
abstract class _$CartLoadInProgressCopyWith<$Res> {
  factory _$CartLoadInProgressCopyWith(
          _CartLoadInProgress value, $Res Function(_CartLoadInProgress) then) =
      __$CartLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartLoadInProgressCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$CartLoadInProgressCopyWith<$Res> {
  __$CartLoadInProgressCopyWithImpl(
      _CartLoadInProgress _value, $Res Function(_CartLoadInProgress) _then)
      : super(_value, (v) => _then(v as _CartLoadInProgress));

  @override
  _CartLoadInProgress get _value => super._value as _CartLoadInProgress;
}

/// @nodoc
class _$_CartLoadInProgress implements _CartLoadInProgress {
  const _$_CartLoadInProgress();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(Cart cart),
    @required TResult error(String title, String subtitle),
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
    TResult success(Cart cart),
    TResult error(String title, String subtitle),
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
    @required TResult init(_CartStateInit value),
    @required TResult loading(_CartLoadInProgress value),
    @required TResult success(_CartLoadSuccess value),
    @required TResult error(_CartError value),
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
    TResult init(_CartStateInit value),
    TResult loading(_CartLoadInProgress value),
    TResult success(_CartLoadSuccess value),
    TResult error(_CartError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoadInProgress implements CartState {
  const factory _CartLoadInProgress() = _$_CartLoadInProgress;
}

/// @nodoc
abstract class _$CartLoadSuccessCopyWith<$Res> {
  factory _$CartLoadSuccessCopyWith(
          _CartLoadSuccess value, $Res Function(_CartLoadSuccess) then) =
      __$CartLoadSuccessCopyWithImpl<$Res>;
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$CartLoadSuccessCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartLoadSuccessCopyWith<$Res> {
  __$CartLoadSuccessCopyWithImpl(
      _CartLoadSuccess _value, $Res Function(_CartLoadSuccess) _then)
      : super(_value, (v) => _then(v as _CartLoadSuccess));

  @override
  _CartLoadSuccess get _value => super._value as _CartLoadSuccess;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_CartLoadSuccess(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    if (_value.cart == null) {
      return null;
    }
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc
class _$_CartLoadSuccess implements _CartLoadSuccess {
  const _$_CartLoadSuccess(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.success(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartLoadSuccess &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @JsonKey(ignore: true)
  @override
  _$CartLoadSuccessCopyWith<_CartLoadSuccess> get copyWith =>
      __$CartLoadSuccessCopyWithImpl<_CartLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(Cart cart),
    @required TResult error(String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(Cart cart),
    TResult error(String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_CartStateInit value),
    @required TResult loading(_CartLoadInProgress value),
    @required TResult success(_CartLoadSuccess value),
    @required TResult error(_CartError value),
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
    TResult init(_CartStateInit value),
    TResult loading(_CartLoadInProgress value),
    TResult success(_CartLoadSuccess value),
    TResult error(_CartError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CartLoadSuccess implements CartState {
  const factory _CartLoadSuccess(Cart cart) = _$_CartLoadSuccess;

  Cart get cart;
  @JsonKey(ignore: true)
  _$CartLoadSuccessCopyWith<_CartLoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$CartErrorCopyWith<$Res> {
  factory _$CartErrorCopyWith(
          _CartError value, $Res Function(_CartError) then) =
      __$CartErrorCopyWithImpl<$Res>;
  $Res call({String title, String subtitle});
}

/// @nodoc
class __$CartErrorCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartErrorCopyWith<$Res> {
  __$CartErrorCopyWithImpl(_CartError _value, $Res Function(_CartError) _then)
      : super(_value, (v) => _then(v as _CartError));

  @override
  _CartError get _value => super._value as _CartError;

  @override
  $Res call({
    Object title = freezed,
    Object subtitle = freezed,
  }) {
    return _then(_CartError(
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
    ));
  }
}

/// @nodoc
class _$_CartError implements _CartError {
  const _$_CartError({@required this.title, @required this.subtitle})
      : assert(title != null),
        assert(subtitle != null);

  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'CartState.error(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartError &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle);

  @JsonKey(ignore: true)
  @override
  _$CartErrorCopyWith<_CartError> get copyWith =>
      __$CartErrorCopyWithImpl<_CartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult loading(),
    @required TResult success(Cart cart),
    @required TResult error(String title, String subtitle),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult loading(),
    TResult success(Cart cart),
    TResult error(String title, String subtitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(title, subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(_CartStateInit value),
    @required TResult loading(_CartLoadInProgress value),
    @required TResult success(_CartLoadSuccess value),
    @required TResult error(_CartError value),
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
    TResult init(_CartStateInit value),
    TResult loading(_CartLoadInProgress value),
    TResult success(_CartLoadSuccess value),
    TResult error(_CartError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CartError implements CartState {
  const factory _CartError(
      {@required String title, @required String subtitle}) = _$_CartError;

  String get title;
  String get subtitle;
  @JsonKey(ignore: true)
  _$CartErrorCopyWith<_CartError> get copyWith;
}
