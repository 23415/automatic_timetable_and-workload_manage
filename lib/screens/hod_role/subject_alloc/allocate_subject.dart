import 'package:flutter/material.dart';

class AllocateSubject extends StatefulWidget {
  const AllocateSubject({super.key});

  @override
  State<AllocateSubject> createState() => _AllocateSubjectState();
}

class _AllocateSubjectState extends State<AllocateSubject> {

  late ValueNotifier<int> _selectedSem;
  late ValueNotifier<String> _selectedSec;
  late ValueNotifier<String> _selectedfaculty;
  late ValueNotifier<String> _selectedsubject;
  @override
  void initState() {
    super.initState();
    _selectedSem = ValueNotifier(1);
    _selectedSec = ValueNotifier('A');
    _selectedfaculty = ValueNotifier('A');
    _selectedsubject = ValueNotifier('A');
  }

  @override
  Widget build(BuildContext context) {
    List<int> _semester = [1, 2, 3, 4, 5, 6, 7, 8];
    List<String> _section = ['A', 'B', 'C', 'D', 'E'];
    List<String> _faculty = ['abc','asd','dasd'];
    List<String> _subject = ['abc','asd','dasd'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Allocate Subject",style: TextStyle(color: Colors.white),),),
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
        child: Column(
          children: [
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Text("Select Faculty :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(flex: 1,),
                ValueListenableBuilder(
                    valueListenable: _selectedfaculty,
                    builder: (context, value, child) {
                      return SizedBox(
                        height: 50,
                        width: 100,
                        child: DropdownButton<String>(
                            value: value,
                            items: _section.map((String sec) {
                              return DropdownMenuItem<String>(
                                  value: sec, child: Text(sec));
                            }).toList(),
                            onChanged: (String? val) {
                              if (val != null) {
                                setState(() {
                                  _selectedfaculty.value = val;
                                });
                              }
                            }),
                      );
                    }),
                Spacer(flex: 1,),
                Text('Select semester :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(flex: 1,),
                ValueListenableBuilder(
                    valueListenable: _selectedSem,
                    builder: (context, value, child) {
                      return SizedBox(
                        width: 100,
                        height: 50,
                        child: DropdownButton<int>(
                            items: _semester.map((int sem) {
                              return DropdownMenuItem<int>(
                                  value: sem, child: Text(sem.toString()));
                            }).toList(),
                            value: value,
                            onChanged: (int? val) {
                              if (val != null) {
                                setState(() {
                                  _selectedSem.value = val;
                                });
                              }
                            }),
                      );
                    }),
                Spacer(flex: 1,),
                Text('Select section :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(flex: 1,),
                ValueListenableBuilder(
                    valueListenable: _selectedSec,
                    builder: (context, value, child) {
                      return SizedBox(
                        height: 50,
                        width: 100,
                        child: DropdownButton<String>(
                            value: value,
                            items: _section.map((String sec) {
                              return DropdownMenuItem<String>(
                                  value: sec, child: Text(sec));
                            }).toList(),
                            onChanged: (String? val) {
                              if (val != null) {
                                setState(() {
                                  _selectedSec.value = val;
                                });
                              }
                            }),
                      );
                    }),
                Spacer(flex: 1,),
                Text('Select subject :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(flex: 1,),
                ValueListenableBuilder(
                    valueListenable: _selectedsubject,
                    builder: (context, value, child) {
                      return SizedBox(
                        height: 50,
                        width: 100,
                        child: DropdownButton<String>(
                            value: value,
                            items: _section.map((String sec) {
                              return DropdownMenuItem<String>(
                                  value: sec, child: Text(sec));
                            }).toList(),
                            onChanged: (String? val) {
                              if (val != null) {
                                setState(() {
                                  _selectedsubject.value = val;
                                });
                              }
                            }),
                      );
                    }),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 1,),
            SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                    onPressed: (){}, child: Text('Allocate',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))),
            Spacer(flex: 1,),
          ],
        )
      ),
    );
  }
}
