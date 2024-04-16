
import '../features/main/screens/main/common_imports.dart';
import '../features/main/screens/main/main_screen.dart';
import '../features/main/tabs/dashboard_images_list_screen/screen/dashboard_shipment_list_screen.dart';
import '../features/splash/screens/splash_screen.dart';
import 'guards/auth_guard.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Screen,Route',
  transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
  routes: <AutoRoute>[
    AutoRoute(
      guards: [AuthGuard],
      path: '/splash',
      initial: true,
      page: SplashScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    AutoRoute(
      path: '/auth',
      page: EmptyRouterPage,
      name: 'AuthRouter',
      children: [
      ],
    ),


    AutoRoute(
      guards: [AuthGuard],
      path: '/main',
      page: MainScreen,
      children: [
        AutoRoute(
          path: 'dashboard-images-list',
          name: 'DashboardImagesListRouter',
          page: DashboardImagesListScreen,
        ),
      ],
    ),


    RedirectRoute(path: '*', redirectTo: '/splash'),
  ],
)
class $AppRouter {}

class EmptyRouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
