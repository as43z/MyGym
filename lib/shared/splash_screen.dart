import 'controller.dart';
import 'package:my_gym/ios/splash.dart';
import 'internals/startup.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends AgnosticStatefulWidget{
    const SplashScreen({super.key});

    @override
    State<AgnosticStatefulWidget> createState() => SplashState();
}

class SplashState extends AgnosticState {
    @override
    void initState() {
        super.initState();
        // Load initial data + redirect to home screen
        loadInitialState(context);
    }

    @override
    Widget ios(BuildContext context) {
        return const SplashScreenIOS();
    }

    // TODO: implement the android build
}

