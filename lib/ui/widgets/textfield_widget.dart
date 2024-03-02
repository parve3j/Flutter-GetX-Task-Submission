import 'package:flutter/material.dart';

Widget customTextfield(keyboardType, controller, hinttext, suffixIcon){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
    child: TextField(
      keyboardType: TextInputType.text,
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.black54,
          size: 20,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.amber, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}