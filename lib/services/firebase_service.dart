// lib/services/firebase_service.dart
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';  // Import the configuration

class FirebaseService {
  // Firebase initialization method
  static Future<FirebaseApp> initialize() async {
    return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Use Firebase config options
    );
  }
}
