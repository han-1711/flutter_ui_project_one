import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonState.disabled);

  Stream<ButtonState> mapEventToState(ButtonEvent event) async* {
    if (event is ButtonPressedEvent) {
      yield ButtonState.enabled;
    } else if (event is ButtonReleasedEvent) {
      yield ButtonState.disabled;
    }
  }
}

abstract class ButtonEvent {}

class ButtonPressedEvent extends ButtonEvent {}

class ButtonReleasedEvent extends ButtonEvent {}

enum ButtonState {
  enabled,
  disabled,
}
