import '../../static/components/people_details_heading.dart';
import '../../static/components/people_details_tile.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchPeopleSection extends StatelessWidget {
  const SeniorTutorBatchPeopleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: const [
          PeopleDetailsHeading(title: "Tutors"),
          PeopleDetailsTile(
            title: "K Kavitha",
            count: 4,
          ),
          PeopleDetailsHeading(title: "Teachers"),
          PeopleDetailsTile(
            title: "K Priyadharshini",
            count: 6,
          ),
          PeopleDetailsHeading(title: "Students"),
          PeopleDetailsTile(
            title: "Hanush",
            count: 6,
          ),
        ],
      ),
    );
  }
}
