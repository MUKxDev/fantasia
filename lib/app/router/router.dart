import 'package:auto_route/auto_route.dart';

import 'package:fantasia/ui/views/home/home_view.dart';
import 'package:fantasia/ui/views/start_up/start_up_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute<dynamic>(page: StartUpView, initial: true),
    AdaptiveRoute<dynamic>(page: HomeView),
  ],
)
class $FantasiaRouter {}
