import '../components/announcement_input_tile.dart';
import '../components/checkbox_tile.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchAnnouncementPage extends StatelessWidget {
  final TextEditingController _announcementMessage = TextEditingController();
  SeniorTutorBatchAnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: const [
                    CheckboxTile(label: "All"),
                    Row(
                      children: [
                        CheckboxTile(label: "Sec-1"),
                        CheckboxTile(label: "Sec-2"),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CheckboxTile(label: "Teachers"),
                          CheckboxTile(label: "Students"),
                          CheckboxTile(label: "Parents"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AnnouncementInputTile(
                hintText: "Announce something to your batch",
                controller: _announcementMessage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
