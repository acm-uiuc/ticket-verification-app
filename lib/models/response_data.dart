import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  factory ResponseData(
      {required String ticket_id,
      required String ticketholder_netid,
      required String payment_method,
      required String event_id,
      required bool used,
      required int purchase_time}) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}
