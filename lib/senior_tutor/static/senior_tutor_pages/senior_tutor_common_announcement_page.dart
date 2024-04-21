import "package:dept_connect/senior_tutor/static/components/announcement_tile.dart";

import "../../static/components/drawer.dart";
import "../../static/components/space_tile.dart";
import "package:flutter/material.dart";

class SeniorTutorCommonAnnouncementDetailsPage extends StatelessWidget {
  const SeniorTutorCommonAnnouncementDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Announcement page "),
        centerTitle: true,
      ),
      drawer: SeniorTutorDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return AnnouncementTile(
                    iconData: Icons.person,
                    senderName: "Dr.A.Kunthavai",
                    description: "newsLetter update ",
                    date: '12 Feb 2024',
                    onTap: () {
                      Navigator.pushNamed(context, "/senior_tutor_batch_announcement_details_page");
                    });
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
