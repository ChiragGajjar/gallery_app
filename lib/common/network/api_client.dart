
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/main/tabs/dashboard_images_list_screen/data/response/get_images_list_response.dart';
import '../../providers/providers.dart';
import '../core/failure/failure.dart';
import '../core/failure/failure_exception.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider<ApiClient>(
  (ref) {
    return ApiClient(
      ref.read(dioProvider),
    );
  },
);

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('?key=38592604-b87ee3af434e996eab96fb1a9&page={page}')
  Future<GetImagesListResponse> getAllImagesList({
    @Part(name: 'page') required String page,
  });
}



extension ApiClientExtension on DioException {
  Failure handleFailure({
    Failure Function(DioException dioError)? failureOverride,
  }) {



    if (type == DioExceptionType.connectionTimeout || type == DioExceptionType.unknown) {
      return const Failure.offline();
    }

    if (failureOverride != null) {
      return failureOverride.call(this);
    }

    switch (response!.statusCode) {
      case 403:
      case 401:
        {
          return const Failure.unauthorized();
        }
      case 400:
        {
          return Failure.serverError(error: response!.data['message']);
        }
      case 500:
        {
          if (response.toString().isEmpty){
            return const Failure.serverError();
          }
          return Failure.serverError(error: response!.data['message']);
        }
      case 425:
        {
          return Failure.serverError(error: response!.data['message']);
        }
    }

    return const Failure.serverError();
  }
}

extension ApiExtensions on ApiClient {
  Future<Either<Failure, T>> executeApiCall<T>(
    Future<T> Function() f, {
    Failure Function(DioException error)? failureOverride,
  }) async {
    try {
      final response = await f.call();

      return right(response);
    } on DioException catch (err) {
      return left(
        err.handleFailure(
          failureOverride: failureOverride,
        ),
      );
    } on FailureException catch (ex) {
      return left(Failure.serverError(error: ex.toString()));
      // return left(ex.failure);
    } catch (err) {
      return left( Failure.serverError(error: err.toString()));
    }
  }
}
