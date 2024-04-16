
import 'package:drag_down_to_pop/drag_down_to_pop.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../screens/main/common_imports.dart';
import '../data/response/get_images_list_response.dart';
import '../notifier/get_images_list_state_notifier.dart';
import '../widgets/tile_view.dart';
import 'image_details_screen.dart';

class DashboardImagesListScreen extends ConsumerStatefulWidget with FailureMixin {
  const DashboardImagesListScreen({super.key});

  @override
  ConsumerState<DashboardImagesListScreen> createState() => DashboardImagesListScreenState();
}


class DashboardImagesListScreenState extends ConsumerState<DashboardImagesListScreen> {

  bool isLoading = true;
  ScrollController _scrollController = ScrollController(initialScrollOffset: 5.0);
  bool _isLoading = true;
  final bool _isLastPage = false;
  int page = 1;

  List<GetImagesHitsListResponse> arrImagesList = [];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 5.0)
      ..addListener(() => _scrollListener());
    arrImagesList = [];
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(getImageListNotifierProvider.notifier).getImageList(page: page.toString());
    });

  }

  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent - 250 &&
        !_scrollController.position.outOfRange) {
      if (!_isLoading && !_isLastPage) {
        ref.read(getImageListNotifierProvider.notifier).getImageList(page: page.toString());
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenNotifiers();
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            arrImagesList = [];
            ref.read(getImageListNotifierProvider.notifier).getImageList(page: page.toString());
          },
          child: Column(
            children: [
              const SizedBox(height: 5),
              Expanded(
                child: Container(
                  color: const Color(0xffF7F9FC),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: arrImagesList.isNotEmpty ? Stack(
                    fit: StackFit.expand,
                    children: [
                      GridView.builder(
                        itemCount: arrImagesList.length,
                        controller: _scrollController,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: kIsWeb ? (width > 1000 ? 4 : width > 600 ? 3 : 2) : 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              TileView(
                                index: index,
                                url: arrImagesList[index].largeImageURL,
                                callback: () => _openDetail(context, index),
                              ),
                              Positioned(
                                bottom:1,
                                child: Container(
                                  color: Colors.grey.shade800,
                                  height: 20,
                                  child: Row(
                                    children: [
                                      const Icon(Icons.thumb_up, color: Colors.blue, size: 18,),
                                      Text(
                                        ' ${arrImagesList[index].likes}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(Icons.remove_red_eye, color: Colors.blue, size: 18,),
                                      Text(
                                        ' ${arrImagesList[index].views}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                ): SizedBox(
                    height: MediaQuery.of(context).size.height/1.5,
                    child: Center(
                      child: Text(
                        'There are no active images.',
                        style: TextStyle(
                          color: Colors.indigo.shade200,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  _openDetail(context, index) {
    final route = ImageViewerPageRoute(
      builder: (context) => ImageDetailScreen(
        posts: arrImagesList,
        pageController: PageController(initialPage: index),
      ),
    );
    // Navigator.push(context, route);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageDetailScreen(posts: arrImagesList, pageController: PageController(initialPage: index),)));


  }

  void _listenNotifiers() {
    ///images list main
    ref.listen<BaseState<GetImagesListResponse, void>>(getImageListNotifierProvider, (previous, current) {
      current.maybeWhen(
        loading:() => LoadingDialog.show(context),
        orElse: () => {},
        errorOccured: (failure) {
          LoadingDialog.hide(context);
        },
        data: (state) {
            LoadingDialog.hide(context);
          setState(() {
            bool noMoreElements = state.data.length < 40;

            page += noMoreElements ? 0 : 1;
            arrImagesList.addAll(state.data.map((item) => item).toList());
            _isLoading = false;

          });
        },
      );
    });

  }

}


class ImageViewerPageRoute extends MaterialPageRoute {
  ImageViewerPageRoute({required super.builder})
      : super(maintainState: false);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return DragDownToPopPageTransitionsBuilder().buildTransitions(this, context, animation, secondaryAnimation, child);
  }

  @override
  bool canTransitionFrom(TransitionRoute previousRoute) {
    return false;
  }

  @override
  bool canTransitionTo(TransitionRoute nextRoute) {
    return false;
  }
}
