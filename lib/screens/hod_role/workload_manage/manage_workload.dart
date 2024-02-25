import 'package:flutter/material.dart';

import '../subject_alloc/allocate_subject.dart';

class ManageWorkLoad extends StatefulWidget {
  const ManageWorkLoad({super.key});

  @override
  State<ManageWorkLoad> createState() => _ManageWorkLoadState();
}

class _ManageWorkLoadState extends State<ManageWorkLoad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Manage Workload',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,int){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Faculty Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('Is Available ?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('Current working hour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('Date',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('Modify',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Mr Anand'),
                        Spacer(),
                        Spacer(),
                        Text('Yes'),
                        Spacer(),
                        Spacer(),
                        Text('3'),
                        Spacer(),
                        Spacer(),
                        Text(DateTime.now().toString()),
                        Spacer(),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AllocateSubject()));
                        }, child: Text('Actions')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
      }),
    );
  }
}
