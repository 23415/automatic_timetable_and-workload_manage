import 'package:flutter/material.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {

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
    bool isPressed = false;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: true,
        title: Center(child: Text('Timetable',style: TextStyle(color: Colors.white),),),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('Select semester :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
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
                Text('Select section :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
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
              ],
            ),
            Spacer(flex: 1,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                  ),
                  onPressed: (){
                setState(() {
                  isPressed = true;
                });
              }, child: Text('View',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),)),
            ),
            Spacer(flex: 1,),
            DataTable(
              columns: const [
                DataColumn(
                  label: Text('Day/Time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('9:30-10:20',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('10:20-11:10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('11:10-11:30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('11:30-12:20',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('12:20-01:10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('01:10-02:00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('02:00-02:50',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('02:50-03:40',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                DataColumn(
                  label: Text('03:40-04:30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ], rows: const [
              DataRow(cells: [
                DataCell(Text('Monday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('Null')),
                DataCell(Text('null')),
                DataCell(Text('Tea-Break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('Lunch-break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('null')),
              ]),
              DataRow(cells: [
                DataCell(Text('Tuesday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('Null')),
                DataCell(Text('null')),
                DataCell(Text('Tea-Break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('Lunch-break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('null')),
              ]),
              DataRow(cells: [
                DataCell(Text('Wednesday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('Null')),
                DataCell(Text('null')),
                DataCell(Text('Tea-Break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('Lunch-break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('null')),
              ]),
              DataRow(cells: [
                DataCell(Text('Thusday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('Null')),
                DataCell(Text('null')),
                DataCell(Text('Tea-Break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('Lunch-break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('null')),
              ]),
              DataRow(cells: [
                DataCell(Text('Friday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('Null')),
                DataCell(Text('null')),
                DataCell(Text('Tea-Break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('Lunch-break',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                DataCell(Text('null')),
                DataCell(Text('null')),
                DataCell(Text('null')),
              ]),
            ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
