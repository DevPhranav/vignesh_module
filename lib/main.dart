import '../senior_tutor/static/senior_tutor_pages/senior_tutor_common_announcement_page.dart';

import '/login/pages/faculty/faculty_login_page.dart';
import '/login/pages/faculty/faculty_page.dart';
import '/login/pages/main_page.dart';
import 'senior_tutor/static//components/announcement_input_tile.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_announcement_page.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_announcement_details_page.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_course_details_page.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_page.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_people_section.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_space_page.dart';
import 'senior_tutor/static/senior_tutor_pages/senior_tutor_batch_stream_page.dart';
import 'senior_tutor/static/senior_tutor_pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartSpace(),
      routes: {
        "/faculty_page": (context) => FacultyPage(),
        "/faculty_login_page": (context) => FacultyLoginPage(),

        //static/senior_tutor_pages routes
        "/senior_tutor_space_page": (context) => SeniorTutorSpacePage(),
        "/senior_tutor_batch_page": (context) => SeniorTutorBatchPage(),
        "/senior_tutor_batch_people_section": (context) => SeniorTutorBatchPeopleSection(),
        "/senior_tutor_batch_announcement_details_page": (context) =>
            SeniorTutorBatchAnnouncementDetailsPage(),
        "/senior_tutor_batch_course_details_page": (context) =>
            SeniorTutorBatchCourseDetailsPage(),
        "/senior_tutor_batch_announcement_page": (context) => SeniorTutorBatchAnnouncementPage(),
        "/senior_tutor_common_announcement_page": (context) => SeniorTutorCommonAnnouncementDetailsPage(),
        // "/hod_batch_announcement_page": (context) => AnnouncementInputTile(),
      },
    );
  }
}
