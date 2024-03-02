import 'package:flutter/material.dart';

Widget customButton(String title, onPressed, context){
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 45,
      width: MediaQuery.of(context).size.width/2.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      child: Center(
        child: Text(title, style: TextStyle(
          fontWeight: FontWeight.w600,
        ),),
      ),
    ),
  );


}