import 'package:flutter/material.dart';

class Tugasflutter6 extends StatelessWidget {
  const Tugasflutter6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            Text(
              "Sign in to your account",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),

            SizedBox(height: 30),
            Text(
              "Email Address",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "suhlahdiaz0904@gmail.com",
                hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Password",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "************",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),

            SizedBox(height: 15),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 209, 139, 35),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 67, 126),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),

                SizedBox(width: 5),

                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 209, 139, 35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                  child: Text(
                    "Or Sign In With",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),

            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(40),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/gg.jpg"),
                        SizedBox(width: 5),
                        Text("Google", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      side: BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(40),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.asset("assets/images/fc.jpg"),
                        SizedBox(width: 5),
                        Text("Facebook", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 5),

                Text(
                  "Join Us",
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 209, 139, 35),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
