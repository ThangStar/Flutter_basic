import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String? hintText;
  final bool isObscureText;

  const MyTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      required this.isObscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscureText,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1))),
    );
  }
}
