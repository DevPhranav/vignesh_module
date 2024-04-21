import '../components/drawer.dart';
import '../components/message_tile.dart';
import '../components/stream_announce_tile.dart';
import '../components/stream_tile.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchStreamPage extends StatelessWidget {
  const SeniorTutorBatchStreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: StreamTile(title: "2021 - 2026 batch", subtitle: "III year"),
          ),
          SliverToBoxAdapter(
            child: StreamAnnounceTile(
              title: " Announce Something to your batch",
              onTap: () {
                Navigator.pushNamed(context, "/senior_tutor_batch_announcement_page");
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return MessageTile(
                  title: "Lab Feedback Form",
                  date: "13 Jan 2024",
                  content:
                      "Dear Students,\nPlease take a moment to provide your honest fee...",
                  onTap: () {
                    print("clicked");
                    Navigator.pushNamed(
                        context, "/senior_tutor_batch_announcement_details_page");
                  },
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
