// Mock classes for testing
library;

import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<Dio>(), MockSpec<HttpClientAdapter>()])
void main() {}
