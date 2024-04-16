import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authGuardProvider = Provider<AuthGuard>(
  (ref) => AuthGuard(),
);

class AuthGuard extends AutoRouteGuard {

  AuthGuard();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {

    // if (isSignedIn.isSome()) {
      resolver.next();
    // } else {
    //   Future.delayed(const Duration(milliseconds: 500), () {
    //     router.pushAndPopUntil(const AuthRouter(), predicate: (_) => false);
    //   });
    // }
  }
}
