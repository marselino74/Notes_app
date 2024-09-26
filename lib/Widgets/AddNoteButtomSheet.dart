import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custome_Text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomeTextFeild(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomeTextFeild(
            hint: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
