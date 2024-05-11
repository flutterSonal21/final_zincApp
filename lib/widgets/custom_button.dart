import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
       width: width*0.34,
        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
        // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.blue ,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(text,style:const  TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),),
        ),
      ),
    );
  }
}