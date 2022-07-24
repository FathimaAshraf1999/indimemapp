import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/profile/view/widgets/indimeme_post.dart';
import 'package:indimeme_frontend/module/profile/view/widgets/indimeme_profile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indimeme_frontend/module/profile/Model/post_model.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const  BottomNavigation(activeIcon: 'menu',),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.more_horiz), itemBuilder: (context) => [])
        ],
      ),
      body: Container(
        //scrollable List view.
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/Augstin.png'), //user profile image.
                    radius: 70,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Agustin Jensen",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Open_Sans',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.white12),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Beginner |',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ), // <-- Text
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      // <-- Icon
                      Icons.bookmark_add_sharp,
                      size: 20.0,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '32',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ///Following and Like section
                IndimemeProfile(value: '91', title: 'Following'),
                const Text('|', style: TextStyle(color: Colors.white70)),
                IndimemeProfile(value: '150.3k', title: 'Followers'),
                Text(
                  '|',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                IndimemeProfile(value: '8.5M', title: 'Likes'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ///Post section
            Expanded(
              child: Container(
                height: 1000,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                      color: Colors.white10,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                    ),
                    Flexible(
                      // height: 500,
                      child: MasonryGridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: postItems.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 2),
                            child: IndimemePost(
                             postModel: postItems[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}