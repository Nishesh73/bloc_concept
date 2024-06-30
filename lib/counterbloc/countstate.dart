abstract class Counterstate {}

class InitialStateCounterState extends Counterstate {

}

class IncrementCounterState extends Counterstate {
  num count;
  IncrementCounterState({required this.count});
}
