import 'package:flutter/material.dart';


class ContainerButton extends StatelessWidget {
  final Color colorback;
  final int colortext;
  final String text;
  final Function function;
  
  const ContainerButton({
    required this.colorback,
    required this.colortext,
    required this.text,
     required this.function,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      onTap:() =>function(),
      child: Container(
        height: 53,
        width: 300,
        decoration: BoxDecoration(
            color: colorback,
            border: Border.all(
              color: const Color(0xff9a4e2d),
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                color: Color(colortext),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}