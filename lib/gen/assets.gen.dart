/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/No_Data_document.png
  AssetGenImage get noDataDocument =>
      const AssetGenImage('assets/images/No_Data_document.png');

  /// File path: assets/images/delete.png
  AssetGenImage get delete => const AssetGenImage('assets/images/delete.png');

  /// File path: assets/images/delete_popup.png
  AssetGenImage get deletePopup =>
      const AssetGenImage('assets/images/delete_popup.png');

  /// File path: assets/images/down.png
  AssetGenImage get down => const AssetGenImage('assets/images/down.png');

  /// File path: assets/images/down_planner.png
  AssetGenImage get downPlanner =>
      const AssetGenImage('assets/images/down_planner.png');

  /// File path: assets/images/drop_down_grey.png
  AssetGenImage get dropDownGrey =>
      const AssetGenImage('assets/images/drop_down_grey.png');

  /// File path: assets/images/drop_up_grey.png
  AssetGenImage get dropUpGrey =>
      const AssetGenImage('assets/images/drop_up_grey.png');

  /// File path: assets/images/excused.png
  AssetGenImage get excused => const AssetGenImage('assets/images/excused.png');

  /// File path: assets/images/forword.png
  AssetGenImage get forword => const AssetGenImage('assets/images/forword.png');

  /// File path: assets/images/ic_background.jpg
  AssetGenImage get icBackground =>
      const AssetGenImage('assets/images/ic_background.jpg');

  /// File path: assets/images/ic_profile.png
  AssetGenImage get icProfile =>
      const AssetGenImage('assets/images/ic_profile.png');

  /// File path: assets/images/left-arrow.png
  AssetGenImage get leftArrow =>
      const AssetGenImage('assets/images/left-arrow.png');

  /// File path: assets/images/no_image_available.jpeg
  AssetGenImage get noImageAvailable =>
      const AssetGenImage('assets/images/no_image_available.jpeg');

  /// File path: assets/images/remove.png
  AssetGenImage get remove => const AssetGenImage('assets/images/remove.png');

  /// File path: assets/images/unCheckbox.png
  AssetGenImage get unCheckbox =>
      const AssetGenImage('assets/images/unCheckbox.png');

  /// File path: assets/images/undraw_access_denied.png
  AssetGenImage get undrawAccessDenied =>
      const AssetGenImage('assets/images/undraw_access_denied.png');

  /// File path: assets/images/user_logo.png
  AssetGenImage get userLogo =>
      const AssetGenImage('assets/images/user_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        noDataDocument,
        delete,
        deletePopup,
        down,
        downPlanner,
        dropDownGrey,
        dropUpGrey,
        excused,
        forword,
        icBackground,
        icProfile,
        leftArrow,
        noImageAvailable,
        remove,
        unCheckbox,
        undrawAccessDenied,
        userLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
