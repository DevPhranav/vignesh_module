import "../../static/components/drawer.dart";
import "../../static/components/space_tile.dart";
import "package:flutter/material.dart";

class SeniorTutorSpacePage extends StatelessWidget {
  const SeniorTutorSpacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senior Tutor Space"),
        centerTitle: true,
      ),
      drawer: SeniorTutorDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SpaceTile(
                    title: "2021 - 2025",
                    subtitle: "$index year",
                    onTap: () {
                      Navigator.pushNamed(context, "/senior_tutor_batch_page");
                    });
              },
              childCount: 4,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SpaceTile(
                  title: "19CS53 Operating System",
                  subtitle: "$index year, 4th Sem",
                  onTap: () {},
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),

    );
  }
}
