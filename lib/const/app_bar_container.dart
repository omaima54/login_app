import 'package:flutter/material.dart';
import 'package:login_app/ScrennPage/welcome_screnn.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 20,
        ),
        IconButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ));
            }, icon: const Icon(Icons.arrow_back_ios_new)),
        // Icon(Icons.arrow_back_ios_new),
        const Spacer(),
        const Text(
          'Welcome To ShopBag',
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 5, fontSize: 15),
        ),
        const Spacer(),
      ],
    );
  }
}
