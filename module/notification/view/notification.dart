import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/notification/view/widget/notification_details.dart';
import 'package:indimeme_frontend/module/notification/model/notification_model.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Notification',
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Open_Sans'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(activeIcon: "menu"),
      body: GroupedListView<INotification, String>(
        elements: notificList,
        groupBy: (INotification notification) => notification.timeAgo,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Open_Sans',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
        ),
        order: GroupedListOrder.DESC,
        itemBuilder: (INotification, notification) {
          return NotificationDetails(
            notification: notification,
          );
        },
      ),
    );
  }
}
