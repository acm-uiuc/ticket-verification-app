import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ticket_verification_app/models/failure.dart';
import 'package:ticket_verification_app/models/response_data.dart';

class ApiService {
  static const String _baseUrl = 'https://n6pzrhqr3je5ubaure5yarfuli0jsnpr.lambda-url.us-east-1.on.aws/';
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );
  }

  Future<Either<Failure, ResponseData>> getQrScanResult({required String qrCodeContent}) async {
    try {
      final response = await _dio.get('', queryParameters: {
        'code': qrCodeContent,
      });

      if (response.statusCode != 200) {
        return left(Failure(message: 'Posting result failed: ${response.statusMessage}'));
      }
      // print(response.data);
      final result = ResponseData.fromJson(response.data as Map<String, dynamic>);
      // print(result);
      return right(result);
    } catch (e) {
      // rethrow;
      return left(Failure(message: 'Exception caught: $e'));
    }
  }
}
