import 'package:flutter/cupertino.dart';

class SplashScreenIOS extends StatelessWidget {
    const SplashScreenIOS({super.key});

    @override
    Widget build(BuildContext context) {
        return const CupertinoPageScaffold(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text("MyGym"),
                        SizedBox(height: 10),
                        CupertinoActivityIndicator(radius: 20)
                    ]
                )
            )
        );
    }
}
