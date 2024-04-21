import 'package:flutter/material.dart';

class SeniorTutorDrawer extends StatelessWidget {
  const SeniorTutorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.person_rounded,
                  size: 50,
                ),
                Text("Dr.M. Mohanapriya"),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.space_dashboard),
            title: Text("Space"),
            splashColor: Colors.grey[150],
            onTap: () {
              final currentRoute = ModalRoute.of(context)?.settings.name;

              if (currentRoute == "/senior_tutor_space_page") {
                Navigator.pop(context);
              } else {
                Navigator.popUntil(
                    context, ModalRoute.withName("/senior_tutor_space_page"));
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Requests"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text("Announcements"),
            onTap: () {
              Navigator.pushNamed(context, "/senior_tutor_common_announcement_page");
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
