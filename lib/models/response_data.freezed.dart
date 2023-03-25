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
  @JsonKey(name: "ticket_id")
  String get ticketId => throw _privateConstructorUsedError;
  @JsonKey(name: "ticketholder_netid")
  String get ticketholderNetId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "event_id")
  String get eventId => throw _privateConstructorUsedError;
  bool get used => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_time")
  int get purchaseTime => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "ticket_id") String ticketId,
      @JsonKey(name: "ticketholder_netid") String ticketholderNetId,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "event_id") String eventId,
      bool used,
      @JsonKey(name: "purchase_time") int purchaseTime});
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
    Object? ticketId = null,
    Object? ticketholderNetId = null,
    Object? paymentMethod = null,
    Object? eventId = null,
    Object? used = null,
    Object? purchaseTime = null,
  }) {
    return _then(_value.copyWith(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketholderNetId: null == ticketholderNetId
          ? _value.ticketholderNetId
          : ticketholderNetId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseTime: null == purchaseTime
          ? _value.purchaseTime
          : purchaseTime // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "ticket_id") String ticketId,
      @JsonKey(name: "ticketholder_netid") String ticketholderNetId,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "event_id") String eventId,
      bool used,
      @JsonKey(name: "purchase_time") int purchaseTime});
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
    Object? ticketId = null,
    Object? ticketholderNetId = null,
    Object? paymentMethod = null,
    Object? eventId = null,
    Object? used = null,
    Object? purchaseTime = null,
  }) {
    return _then(_$_ResponseData(
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketholderNetId: null == ticketholderNetId
          ? _value.ticketholderNetId
          : ticketholderNetId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseTime: null == purchaseTime
          ? _value.purchaseTime
          : purchaseTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseData implements _ResponseData {
  _$_ResponseData(
      {@JsonKey(name: "ticket_id") required this.ticketId,
      @JsonKey(name: "ticketholder_netid") required this.ticketholderNetId,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "event_id") required this.eventId,
      required this.used,
      @JsonKey(name: "purchase_time") required this.purchaseTime});

  factory _$_ResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDataFromJson(json);

  @override
  @JsonKey(name: "ticket_id")
  final String ticketId;
  @override
  @JsonKey(name: "ticketholder_netid")
  final String ticketholderNetId;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "event_id")
  final String eventId;
  @override
  final bool used;
  @override
  @JsonKey(name: "purchase_time")
  final int purchaseTime;

  @override
  String toString() {
    return 'ResponseData(ticketId: $ticketId, ticketholderNetId: $ticketholderNetId, paymentMethod: $paymentMethod, eventId: $eventId, used: $used, purchaseTime: $purchaseTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseData &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.ticketholderNetId, ticketholderNetId) ||
                other.ticketholderNetId == ticketholderNetId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.purchaseTime, purchaseTime) ||
                other.purchaseTime == purchaseTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticketId, ticketholderNetId,
      paymentMethod, eventId, used, purchaseTime);

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
      {@JsonKey(name: "ticket_id")
          required final String ticketId,
      @JsonKey(name: "ticketholder_netid")
          required final String ticketholderNetId,
      @JsonKey(name: "payment_method")
          required final String paymentMethod,
      @JsonKey(name: "event_id")
          required final String eventId,
      required final bool used,
      @JsonKey(name: "purchase_time")
          required final int purchaseTime}) = _$_ResponseData;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$_ResponseData.fromJson;

  @override
  @JsonKey(name: "ticket_id")
  String get ticketId;
  @override
  @JsonKey(name: "ticketholder_netid")
  String get ticketholderNetId;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "event_id")
  String get eventId;
  @override
  bool get used;
  @override
  @JsonKey(name: "purchase_time")
  int get purchaseTime;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
