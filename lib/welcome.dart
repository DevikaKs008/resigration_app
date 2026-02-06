import 'package:flutter/material.dart';
import 'package:resigration_app/login.dart';
import 'package:resigration_app/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                "WELCOME",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 18, 17, 17),
                ),
              ),
              SizedBox(height: 10),
              Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/070/403/041/small/welcome-greetings-celebration-illustration-login-page-welcome-sign-registration-screen-designs-vector.jpg",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: const Color.fromARGB(255, 234, 235, 237),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 7, 7, 7),
                    width: 2,
                  ),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 11, 11, 11),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 7, 7, 7),
                    width: 2,
                  ),
                  backgroundColor: const Color.fromARGB(255, 8, 43, 141),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
