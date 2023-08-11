import 'package:flutter/material.dart';
import 'package:login_app/ScrennPage/singup.dart';
import 'package:login_app/ScrennPage/welcome_screnn.dart';
import 'package:login_app/const/butoon.dart';

import '../const/app_bar_container.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff9a4e2d),
              Color(0xfffd6f1d),
              Color(0xfff5be70),
            ])),
            child: const AppBarContainer(),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.8,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sing In ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff9a4e2d),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'password',
                  ),
                ),
                InkWell(
                  onTap: () {
                    //To Do
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 210, top: 30),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                ButoonSing(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ));
                  },
                  text: 'Sing In',
                ),
                const SizedBox(height: 60),
                const Padding(
                  padding: EdgeInsets.only(left: 210, top: 20),
                  child: Text(
                    'Dont have account?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SingUp(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 280, top: 10),
                    child: Text(
                      'Sing Up',
                      style: TextStyle(
                          color: Color(0xff9a4e2d),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
