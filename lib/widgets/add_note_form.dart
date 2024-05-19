import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:simple_note_app/models/note_model.dart';
import 'package:simple_note_app/widgets/custom_button.dart';
import 'package:simple_note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNodeLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.black.value);
                    BlocProvider.of<AddNoteCubit>(context).addNode(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
