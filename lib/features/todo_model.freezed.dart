// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  set content(String value) => throw _privateConstructorUsedError;
  DateTime? get modifyTime => throw _privateConstructorUsedError;
  set modifyTime(DateTime? value) => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  set dueDate(DateTime value) => throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;
  set status(TodoStatus value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {int id,
      DateTime createdTime,
      String content,
      DateTime? modifyTime,
      DateTime dueDate,
      TodoStatus status});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? content = null,
    Object? modifyTime = freezed,
    Object? dueDate = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      modifyTime: freezed == modifyTime
          ? _value.modifyTime
          : modifyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
          _$TodoImpl value, $Res Function(_$TodoImpl) then) =
      __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdTime,
      String content,
      DateTime? modifyTime,
      DateTime dueDate,
      TodoStatus status});
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdTime = null,
    Object? content = null,
    Object? modifyTime = freezed,
    Object? dueDate = null,
    Object? status = null,
  }) {
    return _then(_$TodoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      modifyTime: freezed == modifyTime
          ? _value.modifyTime
          : modifyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl extends _Todo {
  _$TodoImpl(
      {required this.id,
      required this.createdTime,
      required this.content,
      this.modifyTime,
      required this.dueDate,
      this.status = TodoStatus.unknown})
      : super._();

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdTime;
  @override
  String content;
  @override
  DateTime? modifyTime;
  @override
  DateTime dueDate;
  @override
  @JsonKey()
  TodoStatus status;

  @override
  String toString() {
    return 'Todo(id: $id, createdTime: $createdTime, content: $content, modifyTime: $modifyTime, dueDate: $dueDate, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(
      this,
    );
  }
}

abstract class _Todo extends Todo {
  factory _Todo(
      {required final int id,
      required final DateTime createdTime,
      required String content,
      DateTime? modifyTime,
      required DateTime dueDate,
      TodoStatus status}) = _$TodoImpl;
  _Todo._() : super._();

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdTime;
  @override
  String get content;
  set content(String value);
  @override
  DateTime? get modifyTime;
  set modifyTime(DateTime? value);
  @override
  DateTime get dueDate;
  set dueDate(DateTime value);
  @override
  TodoStatus get status;
  set status(TodoStatus value);
  @override
  @JsonKey(ignore: true)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
