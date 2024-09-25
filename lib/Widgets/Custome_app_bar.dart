import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custome_Search_Icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomeSearchIcon()
      ],
    );
  }
}

