import 'package:flutter/cupertino.dart';
import 'package:my_gym/ios/start_a_session_button.dart';
import 'package:my_gym/ios/ios_divider.dart';

/// Home screen for IOS.
class HomeIOS extends StatelessWidget {
    const HomeIOS({super.key});

    @override
    Widget build(BuildContext context) {
        return CupertinoPageScaffold(
            // This navigation bar can be extrapolated to parent pages?
            navigationBar: const CupertinoNavigationBar(
                // This goes back to the SplashScreen() or the previous screen.
                // I don't quite like this idea of going back unless is the 
                // ExerciseDetailScreen().
                automaticallyImplyLeading: false,
                middle: Text("MyGym")
            ),
            // The SafeArea widget will make the application not
            // overlap between this screen and the navigation bar
            child: SafeArea(
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.bottomLeft,
                    child: const Column(
                        // By default the crossAxisAlignment is set to center
                        // which doesn't quite fit with my envision of the app
                        // therefore, I prefer the text to appear in the left.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            StartASessionButtonIOS(),
                            // Some spaces. It is a multiple of 8px. Also less than
                            // the padding or margin set by the container (40pxs)
                            // which I understand is kindof industry standard?
                            SizedBox(height: 24),
                            Text("Activity Log"),
                            IOSdivider(),
                        ]
                    )
                ),
            )
        );
    }
}
