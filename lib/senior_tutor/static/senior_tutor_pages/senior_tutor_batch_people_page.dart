import '../components/section_tile.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchPeoplePage extends StatelessWidget {
  const SeniorTutorBatchPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          title: "Sec - 1",
          onTap: () {
            Navigator.pushNamed(context, "/senior_tutor_batch_people_section");
          },
        ),
        SectionTile(
            title: "Sec - 2",
            onTap: () {
              Navigator.pushNamed(context, "/senior_tutor_batch_people_section");
            }),
      ],
    );
  }
}
