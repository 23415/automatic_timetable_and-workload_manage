import 'package:flutter/material.dart';

class ViewAllocatedSubject extends StatefulWidget {
  const ViewAllocatedSubject({super.key});

  @override
  State<ViewAllocatedSubject> createState() => _ViewAllocatedSubjectState();
}

class _ViewAllocatedSubjectState extends State<ViewAllocatedSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("View Allocate Subject",style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: true,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context,item){
              return Container(
                height: 100,
                child: const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Faculty name : ____________'),
                        Text('subject name : ____________'),
                        Text('Semester & Section : ____________'),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
