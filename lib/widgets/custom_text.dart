import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key,required this.onTap, required this.text, required this.buttonText});

  final void Function() onTap;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          GestureDetector(onTap:onTap,child: Text(buttonText,style: const TextStyle(color: Colors.blue,fontSize: 16),)),
        ],
      ),
    );
  }
}