import 'package:flutter/cupertino.dart';
import 'package:my_gym/ios/home.dart';

/// Natural delay for opening the application
///
bool loadInitialState(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const HomeIOS())
            )
    );

    return true;
}

