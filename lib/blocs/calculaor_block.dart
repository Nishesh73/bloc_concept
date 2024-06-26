import 'package:bloc_pattern/blocs/calculator_event.dart';
import 'package:bloc_pattern/blocs/calculator_state.dart';
import 'package:bloc_pattern/calculation/calculation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculaorState> {
  CalculatorBloc() : super(CalculatorInitialState()) {
    on<CalculatorEvent>((event, emit) {
      if (event is AddEvent) {
        Calculation calins = Calculation(num1: event.num1, num2: event.num2);
        num result = calins.add();

        emit(CalculatorResult(result: result));
      } else if (event is SubtractEvent) {
        Calculation calins = Calculation(num1: event.num1, num2: event.num2);
        num result = calins.subtract();

        emit(CalculatorResult(result: result));
      }
    });
  }
}
