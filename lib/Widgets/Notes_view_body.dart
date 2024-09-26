import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custome_app_bar.dart';
import 'package:notes_app/Widgets/Custome_note_item.dart';
import 'package:notes_app/Widgets/Notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
