import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscuredText;
  final String? obscuredCharacter;
  final String hintText;
  final IconData? suffixIcon;
  final Widget? prefixIcon;
  final IconData? iconBefore;
  final IconData? iconAfter;
  final Function()? onPressed;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.isObscuredText = false,
      this.obscuredCharacter = '*',
      required this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.iconBefore,
      this.iconAfter,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscuredText!,
        obscuringCharacter: obscuredCharacter!,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 12, left: 15, bottom: 20),
          constraints: BoxConstraints(
            maxHeight: height * 0.565,
            maxWidth: width,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          prefixIcon: prefixIcon,
          suffixIcon: IconButton(icon: Icon(suffixIcon), onPressed: onPressed),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.black45,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.black45,
                width: 1,
              )),
        ),
      ),
    );
  }
}
