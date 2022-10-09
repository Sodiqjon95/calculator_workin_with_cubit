
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:function_tree/function_tree.dart';
import 'package:workin_with_cubit/states/calculator_state.dart';
import 'package:workin_with_cubit/view/widgets/widgets.dart';

class CalculatorCubit extends Cubit<CalculatorState>{

  CalculatorCubit():super(CalculatorInitialState());



String numbers = "";


  String result ({required String inputButton}){
if (!isOperator(inputButton) && inputButton.isNotEmpty) {
      numbers = inputButton.interpret().toString();
      emit(CompletedCalculationState(result:numbers ));
      return  numbers;       
  }
  return '';
}

void addNumber(String num){
  if(numbers.length < 18){
    numbers += num;
    emit(AddState());
  }
  
  // print(numbers);

}

void addOperator(String num){
if (!isOperator(numbers) && numbers.isNotEmpty && numbers.length < 19) {
  numbers += num;
  emit(AddState());
  // print("operators: ${numbers}");

}
  
}


void deleteNumber(){
  numbers = numbers.substring(0, numbers.length - 1);
  emit(AddState());
  
}

void emtyNumber(){
  numbers = "";
  emit(AddState());
}
}