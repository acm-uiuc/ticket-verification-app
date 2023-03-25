// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseData _$$_ResponseDataFromJson(Map<String, dynamic> json) =>
    _$_ResponseData(
      ticketId: json['ticket_id'] as String,
      ticketholderNetId: json['ticketholder_netid'] as String,
      paymentMethod: json['payment_method'] as String,
      eventId: json['event_id'] as String,
      used: json['used'] as bool,
      purchaseTime: json['purchase_time'] as int,
    );

Map<String, dynamic> _$$_ResponseDataToJson(_$_ResponseData instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticketId,
      'ticketholder_netid': instance.ticketholderNetId,
      'payment_method': instance.paymentMethod,
      'event_id': instance.eventId,
      'used': instance.used,
      'purchase_time': instance.purchaseTime,
    };
