import 'package:flutter/cupertino.dart';

/// Starts an exercise session, exclusive to IOS.
class StartASessionButtonIOS extends StatelessWidget {
    const StartASessionButtonIOS({super.key});

    @override
    Widget build(BuildContext context) {
        return CupertinoButton.filled(
                onPressed: () {},
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Icon(CupertinoIcons.add),
                        Text("Start a Session"),
                    ]
                ), 
            );
    }

}
