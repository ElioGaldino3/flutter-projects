import 'package:auto_route/annotations.dart';
import 'package:auto_route_example/pages/dashboard/pages/page1.dart';
import 'package:auto_route_example/pages/home_page.dart';
import 'package:auto_route_example/pages/item_detail_page.dart';
import 'package:auto_route_example/pages/list_page.dart';

import 'pages/dashboard/dashboard.dart';
import 'pages/dashboard/pages/page2.dart';
import 'pages/dashboard/pages/page3.dart';
import 'pages/not_found_page.dart';

export 'app_route.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: HomePage, initial: true),
  AutoRoute(page: ListPage),
  AutoRoute(path: '/item-detail/:userName', page: ItemDetailPage),
  AutoRoute(path: '*', page: NotFoundPage),
  AutoRoute(path: '/dashboard', page: DashboardPage, children: [
    AutoRoute(page: Page1, initial: true),
    AutoRoute(page: Page2),
    AutoRoute(page: Page3),
  ])
])
class $AppRouter {}
