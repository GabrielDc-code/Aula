import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("superman.jpg"),
            ),
            SizedBox(height: 10),
            Text(
              'Usuário',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),

      Divider(),

      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {},
      ),

      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Configurações'),
        onTap: () {},
      ),
    ],
  ),
);
  }
}