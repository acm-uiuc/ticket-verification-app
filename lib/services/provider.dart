import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idk/services/api_service.dart';

final Provider<ApiService> apiServiceProvider = Provider<ApiService>((ref) => ApiService());
