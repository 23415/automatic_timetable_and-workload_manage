import 'package:flutter/material.dart';

class FacultyLoginPage extends StatelessWidget {
  const FacultyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Faculty Login",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: 350,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Spacer(),
              Container(
                color: Colors.white,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(label: Text('username',style: TextStyle(color: Colors.black),),
                      border: OutlineInputBorder(),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                color: Colors.white,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(label: Text('password',style: TextStyle(color: Colors.black),),
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(onPressed: (){}, child: Text("Login"))),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
