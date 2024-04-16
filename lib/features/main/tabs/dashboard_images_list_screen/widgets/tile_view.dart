
import 'dart:ui' as ui;

import 'package:transparent_image/transparent_image.dart';

import '../../../screens/main/common_imports.dart';

class TileView extends StatelessWidget {
  final int index;
  final String url;
  final ui.VoidCallback callback;

  const TileView({Key? key, required this.index, required this.url, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Hero(
        tag: url,
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}