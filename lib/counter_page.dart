import 'package:flutter/material.dart';
import 'counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = CounterBloc();

    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: _counterBloc,
              builder: (context, count) {
                return Text(
                  '$count',
                  style: TextStyle(fontSize: 48.0),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _counterBloc.increment();
              },
              child: Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}
