abstract class CalculatorState{
   CalculatorState();
}

class CalculatorInitialState extends CalculatorState{
   CalculatorInitialState();
}

class AddState extends CalculatorState{
   AddState();
}

class CompletedCalculationState extends CalculatorState{
  String result;
   CompletedCalculationState({required this.result});
}