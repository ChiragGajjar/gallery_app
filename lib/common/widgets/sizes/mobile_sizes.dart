import 'package:flutter/material.dart';

import 'sizes.dart';

class MobileSizes implements Sizes {
  @override
  double defaultPadding = 16.0;

  @override
  double authHorizontalPadding = 36.0;

  @override
  double defaultPaddingSmall = 8.0;

  @override
  double defaultButtonRadius = 8.0;

  @override
  BorderRadius defaultButtonBorderRadius = BorderRadius.circular(8.0);

  @override
  double firstTimeLoginCreatePinPadding = 24.0;

  @override
  double clockInButtonsPaddingTop = .62;

  @override
  double clockInMapSize = .66;

  @override
  double clockInButtonsSpacing = 80;

  @override
  double imageFieldHeight = 200;
}
