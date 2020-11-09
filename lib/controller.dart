import 'package:mobx/mobx.dart';

class Controller {
  var counter = Observable(0);

  Action increment;

  Controller() {
    increment = Action(_increment);

    autorun((_) => {print(counter.value)});
  }

  _increment() {
    counter.value = counter.value + 1;
  }
}
