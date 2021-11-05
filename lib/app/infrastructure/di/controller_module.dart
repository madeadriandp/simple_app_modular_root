import 'package:clean_arc_flutter/app/misc/user_data.dart';
import 'package:clean_arc_flutter/app/ui/pages/mid/controller.dart';
import 'package:clean_arc_flutter/app/ui/pages/home/controller.dart';
import 'package:clean_arc_flutter/app/ui/pages/login/controller.dart';
import 'package:clean_arc_flutter/app/ui/pages/login/presenter.dart';
import 'package:clean_arc_flutter/app/ui/pages/main/controller.dart';
import 'package:clean_arc_flutter/app/ui/pages/profile/controller.dart';
import 'package:clean_arc_flutter/app/ui/pages/splash/controller.dart';
import 'package:injector/injector.dart';

class ControllerModule {
  static void init(Injector injector) {
    injector.registerDependency<SplashController>(() {
      return SplashController(
        injector.get<UserData>(dependencyName: "serviceUserData"),
      );
    }, dependencyName: "root");
    injector.registerDependency<MainController>(() {
      return MainController(
          injector.get<UserData>(dependencyName: "serviceUserData"));
    });
    injector.registerDependency<HomeController>(() {
      return HomeController(
          injector.get<UserData>(dependencyName: "serviceUserData"));
    });
    injector.registerDependency<MidController>(() {
      return MidController(
          injector.get<UserData>(dependencyName: "serviceUserData"));
    });
    injector.registerDependency<ProfileController>(() {
      return ProfileController(
          injector.get<UserData>(dependencyName: "serviceUserData"));
    });
    injector.registerDependency<LoginController>(() {
      return LoginController(injector.get<LoginPresenter>(),
          injector.get<UserData>(dependencyName: "serviceUserData"));
    });
  }
}
