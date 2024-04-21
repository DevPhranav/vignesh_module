import '../components/space_tile.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchCoursePage extends StatelessWidget {
  const SeniorTutorBatchCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return SpaceTile(
                  title: "19CS5$index - Unix Internals",
                  subtitle: "S Priya, R Pavithra",
                  onTap: () {
                    Navigator.pushNamed(
                        context, "/senior_tutor_batch_course_details_page");
                  });
            }, childCount: 5),
          )
        ],
      ),
    );
  }
}
