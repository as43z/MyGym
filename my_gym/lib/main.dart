import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'shared/internals/platform.dart';
import 'shared/controller.dart';
import 'shared/splash_screen.dart';
import 'shared/state_widget.dart';

void main() {
    // Contextualizer.override(false);
    runApp(const MyApp(home: StateWidget()));
}

/// Main entry point for MyGym.
///
/// The entry point is an AgnosticStatelessWidget that contains a
/// `home` field (A nulleable widget). This is done for easy debugging of custom
/// screens and widgets.
class MyApp extends AgnosticStatelessWidget {
    final Widget? home;
    const MyApp({this.home = const SplashScreen(), super.key});

    @override
    Widget ios(BuildContext context) {
        return CupertinoApp(
            title: 'MyGym',
            theme: CupertinoThemeData(brightness: Brightness.light),
            home: home
        );
    }

    @override
    Widget android(BuildContext context) {
        return MaterialApp(
            title: 'MyGym',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: home
        );
    }
}

