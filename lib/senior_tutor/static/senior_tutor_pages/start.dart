import 'package:flutter/material.dart';

class StartSpace extends StatelessWidget {
  const StartSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.grey[100],
              child: Text("HOD"),
              onPressed: () {
                Navigator.pushNamed(context, "/hod_space_page");
              },
            ),
            MaterialButton(
                color:Colors.grey[100],
                child:Text("Senior Tutor"),
                onPressed:(){
                  Navigator.pushNamed(context,"/senior_tutor_space_page");
      }
            ),
          ],
        ),
      ),
    );
  }
}
