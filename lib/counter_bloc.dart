import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<String, int> {
  int _counter = 0;

  CounterBloc() : super(0) {
    // Register the event handler for the 'increment' event
    on<String>((event, emit) {
      if (event == 'increment') {
        _counter++;
        emit(_counter);
      }
    });
  }

  void increment() {
    add('increment');
  }

  @override
  Stream<int> mapEventToState(String event) async* {
    if (event == 'increment') {
      _counter++;
      yield _counter;
    }
  }
}
