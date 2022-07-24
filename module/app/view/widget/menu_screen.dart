import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/widget/menu_tile.dart';
import 'package:indimeme_frontend/module/auth/login_screen.dart';
import 'package:indimeme_frontend/module/notification/view/notification.dart';
import 'package:indimeme_frontend/module/profile/edit_page.dart';
import 'package:indimeme_frontend/module/profile/view/profile_page.dart';
import 'package:indimeme_frontend/module/user/view/suggestions.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/post/view/widgets/common_widgets.dart';



class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        activeIcon: "menu",
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Menu Screen",
          style: kTextStyle.copyWith(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            MenuTile(
              icon: Icons.notification_add,
              title: "Notification",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            MenuTile(
              icon: Icons.supervisor_account_rounded,
              title: "Suggestions",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FollowUserPage()),
                );
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            MenuTile(
              icon: Icons.account_box,
              title: "My Account",
              //OnTap BottomModalSheet Open
              onTap: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            MenuTile(
              icon: Icons.edit,
              title: "Edit Account",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditPage()));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            MenuTile(
              icon: Icons.account_balance_outlined,
              title: "About",
              onTap: () {
                print("press About");
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            MenuTile(
              icon: Icons.logout,
              title: "Log Out",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        'Logout Successfully',
                        style: kTextStyle,
                      )),
                );
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LogInScreen()),
                    (route) => false);
              },
            ),
            const Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
