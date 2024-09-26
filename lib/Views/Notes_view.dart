import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/AddNoteButtomSheet.dart';
import 'package:notes_app/Widgets/Notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
