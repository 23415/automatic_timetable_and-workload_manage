import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(label: Text('Full Name',style: TextStyle(color: Colors.black),),
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Full Name",
                  ),
                ),
              ),
            ),
            SizedBox(height: 35,),
            Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(label: Text('username',style: TextStyle(color: Colors.black),),
                    border: OutlineInputBorder(),
                    hintText: "Enter username",

                  ),
                ),
              ),
            ),
            SizedBox(height: 35,),
            Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(label: Text('password',style: TextStyle(color: Colors.black),),
                      border: OutlineInputBorder(),
                    hintText: "Enter password",
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("sign up")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
