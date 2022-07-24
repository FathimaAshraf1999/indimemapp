import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/widget/menu_screen.dart';
import 'package:indimeme_frontend/module/categories/view/categories.dart';
import 'package:indimeme_frontend/module/home/view/home.dart';
import 'package:indimeme_frontend/module/post/view/create_post_screen.dart';
import 'package:indimeme_frontend/module/search/view/search_page.dart';

class BottomNavigation extends StatelessWidget {
  final String activeIcon;
  const BottomNavigation({Key? key, this.activeIcon = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            icon: Icon(
              Icons.home,
              color: activeIcon == 'homeIcon'
                  ? const Color(0xFF2AAD60)
                  : Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesPage()),
              );
            },
            icon: Icon(
              Icons.category,
              color: activeIcon == 'category'
                  ? const Color(0xFF2AAD60)
                  : Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreatePostScreen()),
              );
            },
            icon: Icon(
              Icons.add_circle_outline,
              color:
                  activeIcon == 'add' ? const Color(0xFF2AAD60) : Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            },
            icon: Icon(
              Icons.search,
              color: activeIcon == 'search'
                  ? const Color(0xFF2AAD60)
                  : Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuScreen()),
              );
            },
            icon: Icon(
              Icons.menu,
              color:
                  activeIcon == 'menu' ? const Color(0xFF2AAD60) : Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
