// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// class NotificationService
// {
//   final FlutterLocalNotificationsPlugin notificationsPlugin=FlutterLocalNotificationsPlugin();
//  // Future<void> initNotification()
// //   async{
// //     AndroidInitializationSettings initializationSettingsAndroid=AndroidInitializationSettings('flutter_logo');
// // var initializationSettings=InitializationSettings(android: initializationSettingsAndroid);
// // await notificationsPlugin.initialize(initializationSettings,
// // onDidReceiveNotificationResponse: (NotificationResponse notificationResponse)async{});
//   //}
//   notificationDetails()
//   {
//     return const NotificationDetails(
//       android: AndroidNotificationDetails('channelId','channelName',
//       importance: Importance.max),
//     );
//   }
//
//   Future showNotification({ int id=0,
//   String? title,
//   String? body,
//   String? payload})
//   async
//   {
//    return notificationsPlugin.show(id, title, body, await notificationDetails());
//   }
// }

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class NotificationServices
{
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings androidInitializationSettings=const AndroidInitializationSettings('flutter_logo');

  void initialiseNotification() async{
    InitializationSettings initializationSettings=InitializationSettings(android: androidInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

    void sendNotification() async{
    AndroidNotificationDetails androidNotificationDetails=const AndroidNotificationDetails('channelId', 'channelName',
    importance: Importance.max,
    priority: Priority.max);

    NotificationDetails notificationDetails=NotificationDetails(android: androidNotificationDetails);
   await flutterLocalNotificationsPlugin.show(
      0,
     "How Are You",
     "Applied Jobs",
     notificationDetails
   );
    }



}



