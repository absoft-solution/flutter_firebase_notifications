import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices{
  FirebaseMessaging firebaseMessaging=FirebaseMessaging.instance;
  RequestNotification()async{
NotificationSettings settings=  await firebaseMessaging.requestPermission(
  alert: true,
  badge: true,
  announcement: true,
  carPlay: true,
  criticalAlert: true,
  provisional: true,
  sound: true,

);
if(settings.authorizationStatus==AuthorizationStatus.authorized){
  print('user granted request');

}
else if(settings.authorizationStatus==AuthorizationStatus.provisional){
  print('user granted provisional permission');
}
else{
  print("user denied permission");
}
  }

}