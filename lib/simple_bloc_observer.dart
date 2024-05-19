import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObServer extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint("Change = $change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    super.onClose(bloc);
  }
}
