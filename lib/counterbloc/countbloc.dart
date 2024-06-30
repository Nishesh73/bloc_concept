import 'package:flutter_bloc/flutter_bloc.dart';
import "countevent.dart";
import 'countstate.dart';

class CounterBloc extends Bloc<CounterEvent, Counterstate> {
  int num1=0;
  CounterBloc() : super(InitialStateCounterState()) {
    on<IncrementEvent>((event, emit) {
      if (event is IncrementEvent) {
        num1=num1+1;
        

        emit(IncrementCounterState(count:num1));
      }
    });
  }
}


