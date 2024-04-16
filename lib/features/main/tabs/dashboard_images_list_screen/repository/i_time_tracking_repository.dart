import 'package:dartz/dartz.dart';

import '../../../../../common/core/failure/failure.dart';
import '../data/response/get_images_list_response.dart';

abstract class IImageListRepository {

  Future<Either<Failure, GetImagesListResponse>> getImageList({
    required String page,
  });

}
