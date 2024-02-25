import 'package:college_project/screens/hod_role/subject_alloc/allocate_subject.dart';
import 'package:college_project/screens/hod_role/subject_alloc/view_alloted_subject.dart';
import 'package:college_project/screens/hod_role/time-table/time_table_generate.dart';
import 'package:college_project/screens/hod_role/time-table/time_table_page.dart';
import 'package:college_project/screens/hod_role/workload_manage/manage_workload.dart';
import 'package:flutter/material.dart';

class HodHomePage extends StatelessWidget {
  const HodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: const Center(child:  Text("HOD/Admin Home",style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Spacer(
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllocateSubject()));
                },
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                    shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("Subject Allocation",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllocatedSubject()));
                },
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                      shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("View Allocated Subject",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TimeTableGenerate()));
                },
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                      shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("Generate TimeTable",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TimeTablePage()));
                },
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                      shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("View Time Table",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ManageWorkLoad()));
                },
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                      shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("Manage WorkLoad ",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                      shadowColor: Colors.deepPurple,
                      elevation: 8,
                      child: const Center(child: Text("Result Analysis",style: TextStyle(fontSize: 20),))),
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
        ],
      )
    );
  }
}
