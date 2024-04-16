import 'package:gallery_app/features/main/screens/main/common_imports.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../data/response/get_images_list_response.dart';
import '../widgets/button_close.dart';
import '../widgets/button_left.dart';
import '../widgets/button_right.dart';

class ImageDetailScreen extends StatefulWidget {
  final List<GetImagesHitsListResponse> posts;

  final PageController pageController;

  const ImageDetailScreen({required this.posts, required this.pageController});

  @override
  _ImageDetailScreenState createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  final bool _visible = true;

  @override
  Widget build(BuildContext context) {

    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): const MoveLeftIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): const MoveRightIntent(),
        LogicalKeySet(LogicalKeyboardKey.escape): const CloseIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          MoveLeftIntent: CallbackAction<MoveLeftIntent>(
            onInvoke: (MoveLeftIntent intent) => {
              widget.pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              )
            },
          ),
          MoveRightIntent: CallbackAction<MoveRightIntent>(
            onInvoke: (MoveRightIntent intent) => {
              widget.pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              )
            },
          ),
          CloseIntent: CallbackAction<CloseIntent>(onInvoke: (CloseIntent intent) => {
            Navigator.of(context).pop(),
          })
        },
        child: Focus(
          autofocus: true,
          child: Stack(
            children: [
              PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(widget.posts[index].largeImageURL),
                    initialScale: PhotoViewComputedScale.contained * 0.99,
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.covered * 1.8,
                    heroAttributes: PhotoViewHeroAttributes(tag: widget.posts[index].largeImageURL),
                  );
                },
                itemCount: widget.posts.length,
                pageController: widget.pageController,
              ),
              ButtonClose(visible: _visible),
              if (kIsWeb)
                ButtonLeft(pageController: widget.pageController, visible: _visible),
              if (kIsWeb)
                ButtonRight(pageController: widget.pageController, visible: _visible),
            ],
          ),
        ),
      ),
    );
  }
}

class MoveLeftIntent extends Intent {
  const MoveLeftIntent();
}

class MoveRightIntent extends Intent {
  const MoveRightIntent();
}

class CloseIntent extends Intent {
  const CloseIntent();
}
