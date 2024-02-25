import 'package:college_project/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'faculty_login_page.dart';
import 'hod_login_page.dart';

class AuthOptionPage extends StatelessWidget {
  const AuthOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            const SizedBox(
              width: 500,
              child:  Center(
                child: Text("INTELLIGENT TIMETABLE GENERATION SYSTEM WITH DYNAMIC FACULTY ALLOCATION AND FACILITY MANAGEMENT",
                  style: TextStyle(fontSize: 28,color: Colors.deepPurple),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HodLoginPage()));
                  }, child: Text("HOD Login",style: TextStyle(color: Colors.white),)),
                ),
                Spacer(),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FacultyLoginPage()));
                  }, child: Text("Faculty Login",style: TextStyle(color: Colors.white),)),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
            }, child: Text("Don't have credentials? Create one",style: TextStyle(color: Colors.black),)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
