import 'package:bloc_pattern/counterbloc/countbloc.dart';
import 'package:bloc_pattern/counterbloc/countevent.dart';
import 'package:bloc_pattern/counterbloc/countstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  num count = 0;
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    var insCountBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder(
            bloc: insCountBloc,
            builder: (BuildContext context, state) {
              if (state is IncrementCounterState) {
                return Text("${state.count}");
              }

              return Text("$count");
            },
          ),
          ElevatedButton(
              onPressed: () {
                insCountBloc.add(IncrementEvent(num1: count));
              },
              child: Text("+")),
        ],
      ),
    );
  }
}
