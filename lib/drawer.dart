import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: Icons.cake_rounded,
            text: "Cake",
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
              icon: Icons.free_breakfast_rounded,
              text: "Coffee",
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.icecream_rounded,
              text: "Ice Cream",
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.home_filled,
            text: "Home",
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.of(context).pop(0);
            },
          ),
          _drawerItem(
            icon: Icons.star,
            text: "Favorite",
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.of(context).pop(0);
            },
          ),
          _drawerItem(
            icon: Icons.bookmark,
            text: "Bookmark",
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.of(context).pop(0);
            },
          )
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/akebi_3.jpg'), fit: BoxFit.cover),
    ),
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/akebi_4.png"), fit: BoxFit.cover)),
    accountName: Text('Taufik Hidayat'),
    accountEmail: Text('akuutauf@flutter.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
