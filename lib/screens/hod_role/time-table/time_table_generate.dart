import 'package:flutter/material.dart';

class TimeTableGenerate extends StatefulWidget {
  const TimeTableGenerate({super.key});

  @override
  State<TimeTableGenerate> createState() => _TimeTableGenerateState();
}

class _TimeTableGenerateState extends State<TimeTableGenerate> {
  late ValueNotifier<int> _selectedSem;
  late ValueNotifier<String> _selectedSec;
  @override
  void initState() {
    super.initState();
    _selectedSem = ValueNotifier(1);
    _selectedSec = ValueNotifier('A');
  }

  @override
  Widget build(BuildContext context) {
    List<int> _semester = [1, 2, 3, 4, 5, 6, 7, 8];
    List<String> _section = ['A', 'B', 'C', 'D', 'E'];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Generate TimeTable',style: TextStyle(color: Colors.white),)),
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
            const Spacer(
              flex: 1,
            ),
            Row(
              children: [
                Spacer(),
                const Center(
                  child: Text('Select Semester',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                const Spacer(
                  flex: 1,
                ),
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
                const Spacer(
                  flex: 1,
                ),
                const Center(
                  child: Text('Select Section',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                const Spacer(
                  flex: 1,
                ),
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
                const Spacer(
                  flex: 1,
                ),],
            ),
            Spacer(),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                    onPressed: () {}, child: const Text("Generate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
