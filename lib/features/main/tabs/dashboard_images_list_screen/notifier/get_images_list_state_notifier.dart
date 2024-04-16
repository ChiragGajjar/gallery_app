
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../common/notifiers/base_notifier/base_notifier.dart';
import '../../../../../common/notifiers/base_notifier/base_state.dart';
import '../data/response/get_images_list_response.dart';
import '../repository/i_time_tracking_repository.dart';
import '../repository/time_tracking_repository.dart';

final getImageListNotifierProvider = StateNotifierProvider.autoDispose<GetImageListNotifier, BaseState<GetImagesListResponse, void>>(
      (ref) {
    return GetImageListNotifier(
      ref.read(imageListRepositoryProvider)
    );
  },
);


class GetImageListNotifier extends BaseStateNotifier<GetImagesListResponse, void> {
  final IImageListRepository _repository;

  GetImageListNotifier(this._repository) : super();

  Future getImageList({
    required String page,
  }) => execute(
    _repository.getImageList(page: page),
  );
}
