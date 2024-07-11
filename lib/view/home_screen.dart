import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_notification/services/notification_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices=NotificationServices();
  @override
  void initState() {
    notificationServices.RequestNotification();
    notificationServices.firebaseInit();


  }
  @override
  Widget build(BuildContext context) {
    notificationServices.GetDeviceToken().then((onValue){
      print(onValue);
    });
    return Scaffold();
  }
}
