import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/notification/model/notification_model.dart';
import 'confirm_button.dart';

class NotificationDetails extends StatelessWidget {
  final INotification? notification;
  const NotificationDetails({Key? key, this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          //to navigate profile
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(2),
                        child: GestureDetector(
                          //to navigate profile screen
                          onTap: () {},
                          child: Container(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(notification!.profilePicURL),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //reusable component for message
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  //to navigate personal profile
                                  ..onTap = () {},
                                text: notification!.name,
                                style: const TextStyle(
                                    fontFamily: 'Open_Sans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: notification!.message,
                                style: TextStyle(color: Colors.white),
                              ),
                              TextSpan(
                                text: notification!.timeAgo,
                                style: TextStyle(color: Colors.grey.shade500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                notification!.type == 'photo-like'
                    ? GestureDetector(
                        //to navigate post screen
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            child: Image.asset(notification!.postImageURL),
                          ),
                        ),
                      )
                    : notification!.type == 'follow-request'
                        ? Container(
                            child: Row(
                              children: [
                                ReuseButton(
                                  title: 'Confir..',
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                ReuseButton(
                                  title: 'Delete',
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )
                        : notification!.type == 'started-following'
                            ? ReuseButton(
                                title: 'following',
                                onTap: () {},
                              )
                            : ReuseButton(
                                title: 'follow',
                                onTap: () {},
                              ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
