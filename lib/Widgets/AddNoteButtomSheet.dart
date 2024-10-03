import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custome_Button.dart';
import 'package:notes_app/Widgets/Custome_Text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNodeForm(),
      ),
    );
  }
}

class AddNodeForm extends StatefulWidget {
  const AddNodeForm({
    super.key,
  });

  @override
  State<AddNodeForm> createState() => _AddNodeFormState();
}

class _AddNodeFormState extends State<AddNodeForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomeTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomeTextFeild(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomeButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
