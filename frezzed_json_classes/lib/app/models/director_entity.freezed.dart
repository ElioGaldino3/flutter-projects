// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'director_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectorEntity _$DirectorEntityFromJson(Map<String, dynamic> json) {
  return _DirectorEntity.fromJson(json);
}

/// @nodoc
class _$DirectorEntityTearOff {
  const _$DirectorEntityTearOff();

  _DirectorEntity call({required String name, required int age}) {
    return _DirectorEntity(
      name: name,
      age: age,
    );
  }

  DirectorEntity fromJson(Map<String, Object?> json) {
    return DirectorEntity.fromJson(json);
  }
}

/// @nodoc
const $DirectorEntity = _$DirectorEntityTearOff();

/// @nodoc
mixin _$DirectorEntity {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectorEntityCopyWith<DirectorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorEntityCopyWith<$Res> {
  factory $DirectorEntityCopyWith(
          DirectorEntity value, $Res Function(DirectorEntity) then) =
      _$DirectorEntityCopyWithImpl<$Res>;
  $Res call({String name, int age});
}

/// @nodoc
class _$DirectorEntityCopyWithImpl<$Res>
    implements $DirectorEntityCopyWith<$Res> {
  _$DirectorEntityCopyWithImpl(this._value, this._then);

  final DirectorEntity _value;
  // ignore: unused_field
  final $Res Function(DirectorEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DirectorEntityCopyWith<$Res>
    implements $DirectorEntityCopyWith<$Res> {
  factory _$DirectorEntityCopyWith(
          _DirectorEntity value, $Res Function(_DirectorEntity) then) =
      __$DirectorEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, int age});
}

/// @nodoc
class __$DirectorEntityCopyWithImpl<$Res>
    extends _$DirectorEntityCopyWithImpl<$Res>
    implements _$DirectorEntityCopyWith<$Res> {
  __$DirectorEntityCopyWithImpl(
      _DirectorEntity _value, $Res Function(_DirectorEntity) _then)
      : super(_value, (v) => _then(v as _DirectorEntity));

  @override
  _DirectorEntity get _value => super._value as _DirectorEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_DirectorEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectorEntity implements _DirectorEntity {
  _$_DirectorEntity({required this.name, required this.age});

  factory _$_DirectorEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DirectorEntityFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'DirectorEntity(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DirectorEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$DirectorEntityCopyWith<_DirectorEntity> get copyWith =>
      __$DirectorEntityCopyWithImpl<_DirectorEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectorEntityToJson(this);
  }
}

abstract class _DirectorEntity implements DirectorEntity {
  factory _DirectorEntity({required String name, required int age}) =
      _$_DirectorEntity;

  factory _DirectorEntity.fromJson(Map<String, dynamic> json) =
      _$_DirectorEntity.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$DirectorEntityCopyWith<_DirectorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
