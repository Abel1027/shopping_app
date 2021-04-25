// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemImageStateTearOff {
  const _$ItemImageStateTearOff();

// ignore: unused_element
  _ItemImageLoadInProgress loading() {
    return const _ItemImageLoadInProgress();
  }

// ignore: unused_element
  _ItemImageLoadSuccess success(Future<Image> image) {
    return _ItemImageLoadSuccess(
      image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemImageState = _$ItemImageStateTearOff();

/// @nodoc
mixin _$ItemImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(Future<Image> image),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Future<Image> image),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ItemImageLoadInProgress value),
    @required TResult success(_ItemImageLoadSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ItemImageLoadInProgress value),
    TResult success(_ItemImageLoadSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ItemImageStateCopyWith<$Res> {
  factory $ItemImageStateCopyWith(
          ItemImageState value, $Res Function(ItemImageState) then) =
      _$ItemImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemImageStateCopyWithImpl<$Res>
    implements $ItemImageStateCopyWith<$Res> {
  _$ItemImageStateCopyWithImpl(this._value, this._then);

  final ItemImageState _value;
  // ignore: unused_field
  final $Res Function(ItemImageState) _then;
}

/// @nodoc
abstract class _$ItemImageLoadInProgressCopyWith<$Res> {
  factory _$ItemImageLoadInProgressCopyWith(_ItemImageLoadInProgress value,
          $Res Function(_ItemImageLoadInProgress) then) =
      __$ItemImageLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ItemImageLoadInProgressCopyWithImpl<$Res>
    extends _$ItemImageStateCopyWithImpl<$Res>
    implements _$ItemImageLoadInProgressCopyWith<$Res> {
  __$ItemImageLoadInProgressCopyWithImpl(_ItemImageLoadInProgress _value,
      $Res Function(_ItemImageLoadInProgress) _then)
      : super(_value, (v) => _then(v as _ItemImageLoadInProgress));

  @override
  _ItemImageLoadInProgress get _value =>
      super._value as _ItemImageLoadInProgress;
}

/// @nodoc
class _$_ItemImageLoadInProgress implements _ItemImageLoadInProgress {
  const _$_ItemImageLoadInProgress();

  @override
  String toString() {
    return 'ItemImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ItemImageLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(Future<Image> image),
  }) {
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Future<Image> image),
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
    @required TResult loading(_ItemImageLoadInProgress value),
    @required TResult success(_ItemImageLoadSuccess value),
  }) {
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ItemImageLoadInProgress value),
    TResult success(_ItemImageLoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ItemImageLoadInProgress implements ItemImageState {
  const factory _ItemImageLoadInProgress() = _$_ItemImageLoadInProgress;
}

/// @nodoc
abstract class _$ItemImageLoadSuccessCopyWith<$Res> {
  factory _$ItemImageLoadSuccessCopyWith(_ItemImageLoadSuccess value,
          $Res Function(_ItemImageLoadSuccess) then) =
      __$ItemImageLoadSuccessCopyWithImpl<$Res>;
  $Res call({Future<Image> image});
}

/// @nodoc
class __$ItemImageLoadSuccessCopyWithImpl<$Res>
    extends _$ItemImageStateCopyWithImpl<$Res>
    implements _$ItemImageLoadSuccessCopyWith<$Res> {
  __$ItemImageLoadSuccessCopyWithImpl(
      _ItemImageLoadSuccess _value, $Res Function(_ItemImageLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ItemImageLoadSuccess));

  @override
  _ItemImageLoadSuccess get _value => super._value as _ItemImageLoadSuccess;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_ItemImageLoadSuccess(
      image == freezed ? _value.image : image as Future<Image>,
    ));
  }
}

/// @nodoc
class _$_ItemImageLoadSuccess implements _ItemImageLoadSuccess {
  const _$_ItemImageLoadSuccess(this.image) : assert(image != null);

  @override
  final Future<Image> image;

  @override
  String toString() {
    return 'ItemImageState.success(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemImageLoadSuccess &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ItemImageLoadSuccessCopyWith<_ItemImageLoadSuccess> get copyWith =>
      __$ItemImageLoadSuccessCopyWithImpl<_ItemImageLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(Future<Image> image),
  }) {
    assert(loading != null);
    assert(success != null);
    return success(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Future<Image> image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_ItemImageLoadInProgress value),
    @required TResult success(_ItemImageLoadSuccess value),
  }) {
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_ItemImageLoadInProgress value),
    TResult success(_ItemImageLoadSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ItemImageLoadSuccess implements ItemImageState {
  const factory _ItemImageLoadSuccess(Future<Image> image) =
      _$_ItemImageLoadSuccess;

  Future<Image> get image;
  @JsonKey(ignore: true)
  _$ItemImageLoadSuccessCopyWith<_ItemImageLoadSuccess> get copyWith;
}
