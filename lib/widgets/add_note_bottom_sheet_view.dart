import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_note_app/widgets/custom_button.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintText: "Title Note",
            maxlines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hintText: "Content",
            maxlines: 4,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 64,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
