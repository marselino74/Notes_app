import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
