import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  factory ResponseData({
    @JsonKey(name: "ticket_id") required String ticketId,
    @JsonKey(name: "ticketholder_netid") required String ticketholderNetId,
    @JsonKey(name: "payment_method") required String paymentMethod,
    @JsonKey(name: "event_id") required String eventId,
    required bool used,
    @JsonKey(name: "purchase_time") required int purchaseTime,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
}
