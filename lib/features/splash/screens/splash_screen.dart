
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../routing/router.gr.dart';
import '../../main/screens/main/common_imports.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    context.router.replace(const MainRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFCCCF),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                ],
                begin: FractionalOffset(0.0, 0.8),
                end: FractionalOffset(3.0, 0.0),
                stops: [0.0, 1.0, 0.0, 0.0],
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: AppSizes.of(context)!.sizes.defaultPadding,
                ),
              ),
            ),
          ),
          const CenteredSpinner(
            color: HColor.indigoColor,
          )
        ],
      ),
    );
  }
}
