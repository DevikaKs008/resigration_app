import 'package:flutter/material.dart';
import 'package:resigration_app/login.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "FORGOT PASSWORD",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 18, 17, 17),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Enter your email to reset your password\n",
                style: TextStyle(
                  fontFamily: "italic",
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 17, 17),
                ),
              ),

              Align(alignment: Alignment.topLeft, child: Text("EMAIL")),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 218, 213, 213),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: const Color.fromARGB(255, 28, 71, 190),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Send Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 196, 190, 190),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Back to login? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
