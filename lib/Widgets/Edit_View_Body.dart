import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custome_Text_feild.dart';
import 'package:notes_app/Widgets/Custome_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomeAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomeTextFeild(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomeTextFeild(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
