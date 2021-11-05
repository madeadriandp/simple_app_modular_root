import 'package:clean_arc_flutter/app/infrastructure/app_component.dart';
import 'package:clean_arc_flutter/app/ui/pages/splash/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class SplashPage extends View {
  SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => new _SplashPageState(
      AppComponent.getInjector().get<SplashController>(dependencyName: "root"));
}

class _SplashPageState extends ViewState<SplashPage, SplashController> {
  _SplashPageState(this._controller) : super(_controller);

  SplashController _controller;

  late Image splashImage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    splashImage = Image.asset(
      'lib/app/ui/assets/images/detail_report_camera.png',
      width: 400,
      height: 400,
    );
    //_controller.checkDevice();
    precacheImage(splashImage.image, context);
  }

  @override
  Widget get view {
    return Scaffold(
      key: globalKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Container(
                child: splashImage,
              ),
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
