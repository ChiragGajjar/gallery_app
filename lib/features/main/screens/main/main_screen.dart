
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routing/router.gr.dart';
import 'common_imports.dart';


final isTablet = Device.get().isTablet;

class MainScreen extends ConsumerStatefulWidget with FailureMixin {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {

  @override
  void initState() {
    super.initState();
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // print("something data");
  }

  final List<dynamic> arrPageWidget = [
    const DashboardImagesListRouter(),
  ];

  @override
  Widget build(BuildContext context) {
    var tabRouter = 0;
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        tabRouter = tabsRouter.activeIndex;
        return CommonAppbar(
          title: Text(
            routeTitles(context)[tabsRouter.activeIndex],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          automaticallyImplyLeading: false,
        );
      },
      builder: (context, widget, animation) {
        final appBarHeight = AppBar().preferredSize.height + MediaQuery
            .of(context)
            .viewPadding
            .top;

        final viewHeight = MediaQuery
            .of(context)
            .size
            .height - appBarHeight;

        return RefreshIndicator(
          onRefresh: () async {
            if (tabRouter == 0) {
              await Future.wait([
              ]);
            } else {
              await Future.wait([
              ]);
            }
          },
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: viewHeight + 5,
              child: Column(
                children: [
                  Expanded(
                    child: FadeTransition(opacity: animation, child: widget),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      routes: const [
        DashboardImagesListRouter(),
      ],

    );
  }
}

List<String> routeTitles(BuildContext context) => [
  S.of(context).images_list,
];
