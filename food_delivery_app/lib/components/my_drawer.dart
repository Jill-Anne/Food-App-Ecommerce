import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
              thickness: 1,
            ),
          ),
          //home list tile

          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context); // close the drawer
            }
          ),
          //settings tile

          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const SettingsPage(), // replace with your settings page
              ));
            }
          ),  

          const Spacer(),
          //log out tile
          MyDrawerTile(
            text: " L O G  O U T",
            icon: Icons.logout,
            onTap: () {
              // log out logic
              Navigator.pop(context); // close the drawer
            }
          ),

          const SizedBox(height: 20),
        ],
      ),
    );

  }
}