import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pro_fit/modules/Home%20and%20User%20Dashboard/home.dart';
import 'package:pro_fit/modules/Notification/firebase_ms.dart';
import 'package:pro_fit/modules/Workout%20Framework/workout.dart';
import 'firebase_ms.dart';

class notifi extends StatefulWidget {
  const notifi({Key? key});

  @override
  State<notifi> createState() => _notifiState();
}

class _notifiState extends State<notifi> {
  // List to store received messages
  List<RemoteMessage> messages = [];

  final firestoreApi = FirestoreAPI();

  @override
  Widget build(BuildContext context) {
    // Retrieve the message from route arguments
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage?;

    // If a message is received, add it to the list and store it in Firestore
    if (message != null) {
      messages.add(message);
      firestoreApi.storeMessageInFirestore(message);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text(
            "NOTIFICATIONS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
          
            title: Text(message.notification?.title?.toString() ?? "No title", style: TextStyle(color: Colors.amber, fontSize: 25),),
            subtitle: Text(message.notification?.body?.toString() ?? "No body", style: TextStyle(color: Colors.amber)),
            trailing: Text(message.data.toString(), style: TextStyle(color: Colors.amber)),
          );
        },
      ),
    );
  }
}
