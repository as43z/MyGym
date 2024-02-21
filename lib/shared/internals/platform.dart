import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

/// Contextlualizer is a Singletone for handling the platform knowledge
///
/// Contextlualizer is formed by:
///     instance --> The instance of contextlualizer;
///     isIOS    --> Is the target platform iOS;
class Contextualizer {
    static Contextualizer? instance;
    late bool isIOS;

    Contextualizer() {
        // Safeguard for non-mobile usage
        if (Platform.isMacOS || Platform.isLinux || Platform.isWindows || kIsWeb )
            throw Exception("This app is only targetted for mobile.");
        
        isIOS = Platform.isIOS;
    }

    // Get the platform
    static Contextualizer get({bool override = false, bool isIOS = false}) {
        return Contextualizer.instance ??= Contextualizer();
    }

    static void override(bool isIOS) {
        Contextualizer.get().isIOS = isIOS;
    }
}
