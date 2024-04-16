import 'dart:async';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/main/screens/main/common_imports.dart';
import 'main/app_environment.dart';
import 'main/riverpod_logger.dart';
import 'routing/guards/auth_guard.dart';
import 'routing/router.gr.dart';
import 'theme/themes.dart' as themes;

final navKey = GlobalKey<NavigatorState>();

Image backdropImage = Image.asset(
  "assets/images/ic_background.jpg",
  fit: BoxFit.cover,
);


Future<void> mainCommon(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();

  EnvInfo.initialize(AppEnvironment.DEV);

  runApp(
      OrientationBuilder(
      builder: (context, orientation) {
        return ProviderScope(
          observers: [RiverpodLogger()],
          child: MyApp(AppEnvironment.DEV, orientation),
        );
      },
    ),
  );
}


class MyApp extends ConsumerStatefulWidget with FailureMixin {
  final AppEnvironment environment;
  final Orientation orientation;

  const MyApp(this.environment, this.orientation);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  _MyAppState();
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();

  }

  late AppRouter _appRouter;

  @override
  void initState() {

    _appRouter = AppRouter(
      navigatorKey: navKey,
      authGuard: ref.read(authGuardProvider),
    );

    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      theme: themes.primaryTheme,
      debugShowCheckedModeBanner: EnvInfo.environment != AppEnvironment.PROD,
      title: EnvInfo.appName,
      builder: (context, widget) {
        return _App(
          widget: widget,
        );
      },
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}


class _App extends ConsumerWidget {
  final Widget? widget;
  const _App({
    this.widget,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Builder(
      builder: (context) {
        return ResponsiveWrapper.builder(
          AppSizes(context: context, child: widget!),
          maxWidth: 1200,
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
          ],
        );
      },
    );
  }
}
