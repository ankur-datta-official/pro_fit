import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pro_fit/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  // Function to initialize notifications
  Future<void> initNotifications() async {
    // Request permission from the user
    NotificationSettings settings = await _firebaseMessaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("Notification permission granted.");
    } else {
      print("Notification permission denied.");
      return;
    }

    // Fetch the FCM token for this device
    String? fcmToken = await _firebaseMessaging.getToken();
    print("FCM Token: $fcmToken");

    // Initialize push notifications
    initPushNotifications();
  }

  // Handle received message
  void handleNotificationMessage(RemoteMessage? message) {
   if(message == null)
   return;
   navigatorKey.currentState?.pushNamed('/notification',arguments: message);
  }

  // Function to initialize background setting
  Future<void> initPushNotifications() async {
    // Handle initial notification when the app is in the background or terminated
    FirebaseMessaging.instance.getInitialMessage().then(handleNotificationMessage);

    // Attach an event listener for when a notification is received while the app is in the foreground
    FirebaseMessaging.onMessage.listen(handleNotificationMessage);
  }

  // Function to navigate to a new screen when a notification is received
  void navigateToNotificationScreen(RemoteMessage? message) {
    if (message != null) {
      navigatorKey.currentState?.pushNamed('/notification', arguments: message);
    }
  }
}


//firestore
class FirestoreAPI {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> storeMessageInFirestore(RemoteMessage message) async {
    try {
      final collection = _firestore.collection('notifications'); // Replace with your Firestore collection name

      await collection.add({
        'title': message.notification?.title ?? 'No title',
        'body': message.notification?.body ?? 'No body',
        'data': message.data,
        'timestamp': FieldValue.serverTimestamp(),
      });

      print('Message stored in Firestore.');
    } catch (e) {
      print('Error storing message in Firestore: $e');
    }
  }
}


