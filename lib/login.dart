import 'package:flutter/material.dart';
import 'package:resigration_app/forgot.dart';
import 'package:resigration_app/signup.dart';
import 'package:resigration_app/welcome.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                "LOGIN",
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
                "Login to your account\n",
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

              Align(alignment: Alignment.topLeft, child: Text("PASSWORD")),
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
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpassword()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 150,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 43, 141),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Dont have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image(
                image: NetworkImage(
                  "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo= ",
                ),
                height: 250,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
