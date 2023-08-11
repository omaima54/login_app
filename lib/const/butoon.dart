import 'package:flutter/material.dart';

class ButoonSing extends StatefulWidget {
 final String text;
 final Function function;
   const ButoonSing({super.key, required this.text,  required this.function});
  @override
  State<ButoonSing> createState() => _ButoonSingState();
}

class _ButoonSingState extends State<ButoonSing> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
     
      onTap:() {
     widget.function();
      },
      child: Container(
        height: 53,
        width: 300,
        decoration: BoxDecoration(
            gradient:const LinearGradient(colors: [
              Color(0xff9a4e2d),
              Color(0xfffd6f1d),
              Color(0xfff5be70),
            ]) ,
            border: Border.all(
              color: const Color(0xff9a4e2d),
            ),
            borderRadius: BorderRadius.circular(15)),
        child:  Center(
          child: Text(
          widget.text,
            style: const TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}