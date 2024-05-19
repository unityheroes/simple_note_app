import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:simple_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:simple_note_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNodeFailure) {
            log("fail");

            // error widgets
          }
          if (state is AddNodeSuccess) {
            log("success");
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          log("loading");
          return AbsorbPointer(
              absorbing: state is AddNodeLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    right: 8,
                    left: 8,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
