import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/core/failure/failure.dart';
import '../../../../main/screens/main/common_imports.dart';
import '../data/response/get_images_list_response.dart';
import 'i_time_tracking_repository.dart';

final imageListRepositoryProvider = Provider<IImageListRepository>((ref) {
  return ImageListRepository(
    ref.read(apiClientProvider),
  );
});

class ImageListRepository implements IImageListRepository {
  final ApiClient _apiClient;

  ImageListRepository(this._apiClient);


  @override
  Future<Either<Failure, GetImagesListResponse>> getImageList({
    required String page,
  }) async {

    final response = await _apiClient.executeApiCall(
      () => _apiClient.getAllImagesList(page: page),
    );

    return response.fold((l) => left(l), (r) async {
      return right(r);
    });
  }
}
