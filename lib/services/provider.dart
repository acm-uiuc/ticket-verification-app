import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idk/services/api_service.dart';

final Provider apiServiceProvider = Provider((ref) => ApiService());
