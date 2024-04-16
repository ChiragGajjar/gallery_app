import 'package:flutter/material.dart';

import 'mobile_sizes.dart';
import 'sizes.dart';
import 'tablet_sizes.dart';

class AppSizes extends InheritedWidget {
  AppSizes({
    required BuildContext context,
    required Widget child,
  }) : super(child: child) {
    final formFactor = getFormFactor(context);
    switch (formFactor) {
      case _ScreenType.tablet:
        sizes = TabletSizes();
        break;
      default:
        sizes = MobileSizes();
    }
  }

  late final Sizes sizes;

  @override
  bool updateShouldNotify(AppSizes old) => false;

  static AppSizes? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppSizes>();
  }
}

_ScreenType getFormFactor(BuildContext context) {
  final deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > 650) {
    return _ScreenType.tablet;
  }
  return _ScreenType.handset;
}

enum _ScreenType {
  tablet,
  handset,
}
