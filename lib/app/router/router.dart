import 'package:auto_route/auto_route.dart';
import 'package:fantasia/ui/views/add_new_book/add_new_book_view.dart';

import 'package:fantasia/ui/views/home/home_view.dart';
import 'package:fantasia/ui/views/start_up/start_up_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute<Type>>[
    AdaptiveRoute<Type>(page: StartUpView, initial: true),
    AdaptiveRoute<Type>(page: HomeView),
    AdaptiveRoute<Type>(page: AddNewBookView),
  ],
)
class $FantasiaRouter {}
