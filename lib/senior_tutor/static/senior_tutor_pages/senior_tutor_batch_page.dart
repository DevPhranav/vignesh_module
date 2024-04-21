import '../../static/components/drawer.dart';
import '../../static/components/stream_announce_tile.dart';
import '../../static/components/stream_tile.dart';
import '../senior_tutor_pages/senior_tutor_batch_course_page.dart';
import '../senior_tutor_pages/senior_tutor_batch_people_page.dart';
import '../senior_tutor_pages/senior_tutor_batch_stream_page.dart';
import 'package:flutter/material.dart';

class SeniorTutorBatchPage extends StatefulWidget {
  const SeniorTutorBatchPage({super.key});

  @override
  State<SeniorTutorBatchPage> createState() => _SeniorTutorBatchPageState();
}

class _SeniorTutorBatchPageState extends State<SeniorTutorBatchPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _SeniorTutorBatchPages = [
    SeniorTutorBatchStreamPage(),
    SeniorTutorBatchCoursePage(),
    SeniorTutorBatchPeoplePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SeniorTutorDrawer(),
      body: _SeniorTutorBatchPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Stream"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Course"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        ],
      ),
    );
  }
}
