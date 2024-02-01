/*
 Controller

 Controller is the main interface to contextualise which widget should it load,
 either the iOS ones or the Material.

*/
import 'internals/platform.dart';
import 'package:flutter/material.dart';

/// AgnosticStatelessWidget is a class for agnostic platform content.
///
/// So AgnosticStatelessWidget builds an StatelessWidget that is agnostic to
/// either iOS or android.
class AgnosticStatelessWidget extends StatelessWidget {
    const AgnosticStatelessWidget({super.key});

    // Apparently the const helps with performance?
    Widget ios(BuildContext context) { return const SizedBox.shrink(); }
    Widget android(BuildContext context) { return const SizedBox.shrink(); }

    @override
    Widget build(BuildContext context) { return Contextualizer.get().isIOS ? ios(context) : android(context); }  
}

class AgnosticStatefulWidget extends StatefulWidget {
    const AgnosticStatefulWidget({super.key});

    @override
    State<AgnosticStatefulWidget> createState() => AgnosticState();
}

class AgnosticState extends State<AgnosticStatefulWidget> {
    Widget ios(BuildContext context) { return const SizedBox.shrink(); }
    Widget android(BuildContext context) { return const SizedBox.shrink(); }

    @override
    Widget build(BuildContext context) { return Contextualizer.get().isIOS ? ios(context) : android(context); }
}
