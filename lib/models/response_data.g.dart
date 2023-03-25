// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseData _$$_ResponseDataFromJson(Map<String, dynamic> json) =>
    _$_ResponseData(
      ticket_id: json['ticket_id'] as String,
      ticketholder_netid: json['ticketholder_netid'] as String,
      payment_method: json['payment_method'] as String,
      event_id: json['event_id'] as String,
      used: json['used'] as bool,
      purchase_time: json['purchase_time'] as int,
    );

Map<String, dynamic> _$$_ResponseDataToJson(_$_ResponseData instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'ticketholder_netid': instance.ticketholder_netid,
      'payment_method': instance.payment_method,
      'event_id': instance.event_id,
      'used': instance.used,
      'purchase_time': instance.purchase_time,
    };
