import 'package:flutter/material.dart';
import 'package:login_app/ScrennPage/login_view.dart';
import 'package:login_app/ScrennPage/singup.dart';
import 'package:login_app/const/container_with_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff9a4e2d),
              Color(0xfffd6f1d),
              Color(0xfff5be70),
            ])),
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff9a4e2d),
                    blurRadius: 3,
                    offset: Offset(2, 5))
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/icons/1.png",
                  height: 300,
                ),
                const Text('Welcome Back',
                    style: TextStyle(fontSize: 28, color: Color(0xff9a4e2d))),
                const SizedBox(height: 30),
                ContainerButton(
                  colorback: Colors.white,
                  colortext: 0xff9a4e2d,
                  text: 'SING IN',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                  },
                ),
                const SizedBox(height: 20),
                ContainerButton(
                  colorback: const Color(0xff9a4e2d),
                  colortext: 0xFFFFFFFF,
                  text: 'SING UP',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SingUp(),
                        ));
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'Login with Social Media',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    circleWithIcons('facebook'),
                    const SizedBox(width: 20),
                    circleWithIcons('instagram'),
                    const SizedBox(width: 20),
                    circleWithIcons('twitter'),
                    const Spacer(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container circleWithIcons(String icons) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: const Color(0xfff5be70),
          borderRadius: BorderRadius.circular(20)),
      child: Image.asset('assets/icons/$icons.png'),
    );
  }
}
