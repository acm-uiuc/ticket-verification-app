// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  String get ticket_id => throw _privateConstructorUsedError;
  String get ticketholder_netid => throw _privateConstructorUsedError;
  String get payment_method => throw _privateConstructorUsedError;
  String get event_id => throw _privateConstructorUsedError;
  bool get used => throw _privateConstructorUsedError;
  int get purchase_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call(
      {String ticket_id,
      String ticketholder_netid,
      String payment_method,
      String event_id,
      bool used,
      int purchase_time});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = null,
    Object? ticketholder_netid = null,
    Object? payment_method = null,
    Object? event_id = null,
    Object? used = null,
    Object? purchase_time = null,
  }) {
    return _then(_value.copyWith(
      ticket_id: null == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketholder_netid: null == ticketholder_netid
          ? _value.ticketholder_netid
          : ticketholder_netid // ignore: cast_nullable_to_non_nullable
              as String,
      payment_method: null == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String,
      event_id: null == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as String,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
      purchase_time: null == purchase_time
          ? _value.purchase_time
          : purchase_time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseDataCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$_ResponseDataCopyWith(
          _$_ResponseData value, $Res Function(_$_ResponseData) then) =
      __$$_ResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ticket_id,
      String ticketholder_netid,
      String payment_method,
      String event_id,
      bool used,
      int purchase_time});
}

/// @nodoc
class __$$_ResponseDataCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$_ResponseData>
    implements _$$_ResponseDataCopyWith<$Res> {
  __$$_ResponseDataCopyWithImpl(
      _$_ResponseData _value, $Res Function(_$_ResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = null,
    Object? ticketholder_netid = null,
    Object? payment_method = null,
    Object? event_id = null,
    Object? used = null,
    Object? purchase_time = null,
  }) {
    return _then(_$_ResponseData(
      ticket_id: null == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketholder_netid: null == ticketholder_netid
          ? _value.ticketholder_netid
          : ticketholder_netid // ignore: cast_nullable_to_non_nullable
              as String,
      payment_method: null == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String,
      event_id: null == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as String,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
      purchase_time: null == purchase_time
          ? _value.purchase_time
          : purchase_time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseData implements _ResponseData {
  _$_ResponseData(
      {required this.ticket_id,
      required this.ticketholder_netid,
      required this.payment_method,
      required this.event_id,
      required this.used,
      required this.purchase_time});

  factory _$_ResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDataFromJson(json);

  @override
  final String ticket_id;
  @override
  final String ticketholder_netid;
  @override
  final String payment_method;
  @override
  final String event_id;
  @override
  final bool used;
  @override
  final int purchase_time;

  @override
  String toString() {
    return 'ResponseData(ticket_id: $ticket_id, ticketholder_netid: $ticketholder_netid, payment_method: $payment_method, event_id: $event_id, used: $used, purchase_time: $purchase_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseData &&
            (identical(other.ticket_id, ticket_id) ||
                other.ticket_id == ticket_id) &&
            (identical(other.ticketholder_netid, ticketholder_netid) ||
                other.ticketholder_netid == ticketholder_netid) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id) &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.purchase_time, purchase_time) ||
                other.purchase_time == purchase_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticket_id, ticketholder_netid,
      payment_method, event_id, used, purchase_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      __$$_ResponseDataCopyWithImpl<_$_ResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDataToJson(
      this,
    );
  }
}

abstract class _ResponseData implements ResponseData {
  factory _ResponseData(
      {required final String ticket_id,
      required final String ticketholder_netid,
      required final String payment_method,
      required final String event_id,
      required final bool used,
      required final int purchase_time}) = _$_ResponseData;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$_ResponseData.fromJson;

  @override
  String get ticket_id;
  @override
  String get ticketholder_netid;
  @override
  String get payment_method;
  @override
  String get event_id;
  @override
  bool get used;
  @override
  int get purchase_time;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
