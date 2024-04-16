import 'package:flutter/material.dart';

import 'sizes.dart';

class TabletSizes implements Sizes {
  @override
  double defaultPadding = 24.0;

  @override
  double authHorizontalPadding = 64.0;

  @override
  double defaultPaddingSmall = 12.0;

  @override
  double defaultButtonRadius = 16.0;

  @override
  BorderRadius defaultButtonBorderRadius = BorderRadius.circular(16.0);

  @override
  double firstTimeLoginCreatePinPadding = 40.0;

  @override
  double clockInButtonsPaddingTop = .70;

  @override
  double clockInMapSize = .73;

  @override
  double clockInButtonsSpacing = 30;

  @override
  double imageFieldHeight = 320;
}
