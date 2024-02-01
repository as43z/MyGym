import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StateWidget extends AgnosticStatefulWidget {
    const StateWidget({super.key});

    @override
    State<AgnosticStatefulWidget> createState() => StateFromWidget();
}

class StateFromWidget extends AgnosticState {
    int _times = 0;

    @override
    Widget ios(BuildContext context) {
        return CupertinoPageScaffold(
            child: Center (
                child: Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Center(child: Text("Pushed $_times times")),
                        const SizedBox(height: 20.0),
                        Center(
                          child: CupertinoButton.filled(
                            onPressed: () => setState(() => _times++),
                            child: const Icon(CupertinoIcons.add),
                            )
                        )
                    ]
                )
            )
        );
    }
}
