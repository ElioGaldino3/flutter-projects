// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) {
  return _MovieEntity.fromJson(json);
}

/// @nodoc
class _$MovieEntityTearOff {
  const _$MovieEntityTearOff();

  _MovieEntity call(
      {required String name,
      required DirectorEntity director,
      @JsonKey(name: 'release_date') required DateTime releaseDate}) {
    return _MovieEntity(
      name: name,
      director: director,
      releaseDate: releaseDate,
    );
  }

  MovieEntity fromJson(Map<String, Object?> json) {
    return MovieEntity.fromJson(json);
  }
}

/// @nodoc
const $MovieEntity = _$MovieEntityTearOff();

/// @nodoc
mixin _$MovieEntity {
  String get name => throw _privateConstructorUsedError;
  DirectorEntity get director => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      DirectorEntity director,
      @JsonKey(name: 'release_date') DateTime releaseDate});

  $DirectorEntityCopyWith<$Res> get director;
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res> implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  final MovieEntity _value;
  // ignore: unused_field
  final $Res Function(MovieEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? director = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as DirectorEntity,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $DirectorEntityCopyWith<$Res> get director {
    return $DirectorEntityCopyWith<$Res>(_value.director, (value) {
      return _then(_value.copyWith(director: value));
    });
  }
}

/// @nodoc
abstract class _$MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$MovieEntityCopyWith(
          _MovieEntity value, $Res Function(_MovieEntity) then) =
      __$MovieEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      DirectorEntity director,
      @JsonKey(name: 'release_date') DateTime releaseDate});

  @override
  $DirectorEntityCopyWith<$Res> get director;
}

/// @nodoc
class __$MovieEntityCopyWithImpl<$Res> extends _$MovieEntityCopyWithImpl<$Res>
    implements _$MovieEntityCopyWith<$Res> {
  __$MovieEntityCopyWithImpl(
      _MovieEntity _value, $Res Function(_MovieEntity) _then)
      : super(_value, (v) => _then(v as _MovieEntity));

  @override
  _MovieEntity get _value => super._value as _MovieEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? director = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_MovieEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as DirectorEntity,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieEntity implements _MovieEntity {
  _$_MovieEntity(
      {required this.name,
      required this.director,
      @JsonKey(name: 'release_date') required this.releaseDate});

  factory _$_MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MovieEntityFromJson(json);

  @override
  final String name;
  @override
  final DirectorEntity director;
  @override
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;

  @override
  String toString() {
    return 'MovieEntity(name: $name, director: $director, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(director),
      const DeepCollectionEquality().hash(releaseDate));

  @JsonKey(ignore: true)
  @override
  _$MovieEntityCopyWith<_MovieEntity> get copyWith =>
      __$MovieEntityCopyWithImpl<_MovieEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieEntityToJson(this);
  }
}

abstract class _MovieEntity implements MovieEntity {
  factory _MovieEntity(
          {required String name,
          required DirectorEntity director,
          @JsonKey(name: 'release_date') required DateTime releaseDate}) =
      _$_MovieEntity;

  factory _MovieEntity.fromJson(Map<String, dynamic> json) =
      _$_MovieEntity.fromJson;

  @override
  String get name;
  @override
  DirectorEntity get director;
  @override
  @JsonKey(name: 'release_date')
  DateTime get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$MovieEntityCopyWith<_MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
