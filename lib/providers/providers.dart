import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main/app_environment.dart';
import 'gallary_interceptors.dart';

final apiBaseUrlProvider = Provider<String>((ref) => EnvInfo.apiBaseUrl);

final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: ref.watch(apiBaseUrlProvider),
      followRedirects: false,
      connectTimeout: const Duration(seconds: 60),
    ),
  )..interceptors.addAll(
      [
        GallaryInterceptors(
          ref,
        ),
        // UnauthorizedResponseInterceptor(
        //   ref.read(tokenRefreshRepositoryProvider),
        //   ref.read(bareBoneDioProvider),
        //   ref.read(authenticationNotifierProvider),
        // ),
        // PrettyDioLogger(
        //   requestHeader: true,
        //   requestBody: true,
        // )
      ],
    ),
);

