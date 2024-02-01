import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends AgnosticStatelessWidget {
    const SplashScreen({super.key});

    @override
    Widget ios(BuildContext context) {
        return const CupertinoPageScaffold(
          child: Center(
            child: CupertinoActivityIndicator()
          ) 
        );
    }
    
}
