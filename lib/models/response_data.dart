import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  factory ResponseData({
    required String name,
    required bool memberStatus,
    required String eventName,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
}
