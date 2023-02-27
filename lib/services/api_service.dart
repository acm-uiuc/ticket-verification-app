import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:idk/models/failure.dart';

class ApiService {
  static const String _baseUrl = '';
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );
  }

  Future<Either<Failure, Unit>> postQrScanResult({required String qrCodeContent}) async {
    try {
      final response = await _dio.post('', data: {
        'code': qrCodeContent,
      });

      if (response.statusCode != 200) {
        return left(Failure(message: 'Posting result failed: ${response.statusMessage}'));
      }

      return right(unit);
    } catch (e) {
      return left(Failure(message: 'Exception caught: $e'));
    }
  }
}
