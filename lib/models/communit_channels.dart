import 'package:flutter/material.dart';

class CommunitChannels extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onJoinButtonPressed;
  final Color? color;

  const CommunitChannels({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onJoinButtonPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 115, 230),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 30,
                width: 30,
                color: color,
                child: Image.asset(
                  imagePath,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 12,top: 5,bottom: 5),
            child: GestureDetector(
              onTap:onJoinButtonPressed,
              child: Container(

                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                height: 30,
                width: 60,
                child: const Text('Join',style: TextStyle(color: Colors.blue),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
