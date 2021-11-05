import 'package:clean_arc_flutter/app/ui/pages/login/view.dart';
import 'package:clean_arc_flutter/app/ui/pages/main/view.dart';
import 'package:clean_arc_flutter/app/ui/pages/splash/view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_1/main.dart' as First;

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage()),
    // ChildRoute(
    //   '/details',
    //   child: (_, args) => DetailsPage(result: args.data),
    //   guards: [
    //     GuardT('/details'),
    //   ],
    // ),
    ChildRoute(
      '/firstApp',
      child: (_, args) => First.MyApp(),
    ),
    ChildRoute(
      '/login',
      child: (_, __) => LoginPage(),
    ),
    ChildRoute(
      '/MainPage',
      child: (_, __) => MainPage(),
    ),
  ];
}
