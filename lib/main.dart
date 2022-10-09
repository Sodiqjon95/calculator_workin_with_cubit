import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workin_with_cubit/cubit/calculator_cubit.dart';
import 'package:workin_with_cubit/view/calculator_view.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.amber),
      home: BlocProvider(
        create:(_) => CalculatorCubit(),
        child: const CalculatorView()
        // HomePage()
      ),       
       );
  }
}
