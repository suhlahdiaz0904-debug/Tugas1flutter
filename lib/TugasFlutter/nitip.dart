import 'package:flutter/material.dart';

class Tugasflutter8 extends StatelessWidget {
  const Tugasflutter8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Login"),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 128, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 70,
                width: 185,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Sign in to your account",
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 148, 145, 145),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
