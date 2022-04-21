import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio {
    final client = Dio(
      BaseOptions(
        baseUrl: 'https://api.coinmerce.io',
        connectTimeout: 32000,
        receiveTimeout: 32000,
        sendTimeout: 32000,
        headers: {
          Headers.contentTypeHeader: 'application/json',
          Headers.acceptHeader: Headers.jsonContentType,
        },
      ),
    );

    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (_, __, ___) => true;
      return client;
    };

    if (kDebugMode) {
      client.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
        ),
      );
    }
    return client;
  }
}
