import 'package:flutter/cupertino.dart';

class HomeIOS extends StatelessWidget {
    const HomeIOS({super.key});

    @override
    Widget build(BuildContext context) {
        return const CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                middle: Text("MyGym")
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       CupertinoButton.filled(
                            onPressed: null,
                            child: Text("Start a Session"),
                        ), 
                    ]
                )
            )
        );
    }
}
