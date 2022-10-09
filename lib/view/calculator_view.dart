import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workin_with_cubit/cubit/calculator_cubit.dart';
import 'package:workin_with_cubit/view/widgets/widgets.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String inputButton = "";
  String operator = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                      child: SizedBox(
                    height: 30,
                  )),
                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     // crossAxisAlignment: CrossAxisAlignment.stretch,
                  //     children: [
                  //       Text(
                  //         inputButton,
                  //         style:
                  //              TextStyle(fontSize: inputButton.length >=20? 20:35, color: Colors.red),
                  //       )
                  //     ]),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      context.watch<CalculatorCubit>().numbers,
                      style: TextStyle(
                        fontSize: context.watch<CalculatorCubit>().numbers.length >= 13 ? 35 : 55,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 8,
              crossAxisCount: 4,
              children: [
                //operators
                myButtons(
                    index: 0,
                    onPressed: () {
                      context.read<CalculatorCubit>().emtyNumber();
                    }),
                myButtons(
                    index: 1,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("-");
                    }),
                myButtons(
                    index: 2,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("%");
                    }),
                myButtons(
                    index: 3,
                    onPressed: () {
                      context.read<CalculatorCubit>().deleteNumber();
                    }),

                //7 8 9 numbers
                myButtons(
                    index: 4,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("7");
                    }),
                myButtons(
                    index: 5,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("5");
                    }),
                myButtons(
                    index: 6,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("6");
                    }),

                // /
                myButtons(
                    index: 7,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("/");
                    }),
                // 4 5 6
                myButtons(
                    index: 8,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("4");
                    }),
                myButtons(
                    index: 9,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("5");
                    }),
                myButtons(
                    index: 10,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("6");
                    }),

                // x
                myButtons(
                    index: 11,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("*");
                    }),

                //1 2 3
                myButtons(
                    index: 12,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("1");
                    }),

                myButtons(
                    index: 13,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("2");
                    }),
                myButtons(
                    index: 14,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("3");
                    }),

                // -
                myButtons(
                    index: 15,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("-");
                    }),

                //0
                myButtons(
                    index: 16,
                    onPressed: () {
                      context.read<CalculatorCubit>().addNumber("0");
                    }),

                // . = +
                myButtons(
                    index: 17,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator(".");
                    }),

                //=
                myButtons(
                    index: 18,
                    onPressed: () {
                      inputButton = context.read<CalculatorCubit>().numbers;

                      context.read<CalculatorCubit>().result(inputButton: inputButton);
                    }),
                myButtons(
                    index: 19,
                    onPressed: () {
                      context.read<CalculatorCubit>().addOperator("+");
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
