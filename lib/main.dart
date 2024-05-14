import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/notifi_service.dart';
void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: Notify(),));
}
class Notify extends StatefulWidget {
   Notify({Key? key}) : super(key: key);
final String title="";
  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  NotificationServices notificationServices=NotificationServices();
  @override
  void initState()
  {
    super.initState();
    notificationServices.initialiseNotification();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          NotificationServices().sendNotification();
          print("hii");
          },
          child: Text("Send Notification"),
        ),
      ),
    );
  }
}
