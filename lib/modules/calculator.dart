import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_calculator/component/component.dart';
import 'package:simple_calculator/cubit/cubit.dart';
import 'package:simple_calculator/cubit/states.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CalculatorCubit(),
        child: BlocConsumer<CalculatorCubit, CalculatorStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = CalculatorCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                title: Text(
                  "Calculator",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              body: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 15, end: 12.0),
                    child: Container(
                      child: Text(
                        CalculatorCubit.get(context).equation,
                        style: TextStyle(fontSize: 30),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 25, end: 12.0),
                    child: Container(
                      child: Text(
                        CalculatorCubit.get(context).result,
                        style: TextStyle(fontSize: 40),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  const Expanded(child: Divider()),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Table(
                          children: [
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "C",
                                  function: () {
                                    cubit.onpressed("C");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "D",
                                  function: () {
                                    cubit.onpressed("D");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "/",
                                  function: () {
                                    cubit.onpressed("/");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "7",
                                  function: () {
                                    cubit.onpressed("7");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "8",
                                  function: () {
                                    cubit.onpressed("8");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "9",
                                  function: () {
                                    cubit.onpressed("9");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "4",
                                  function: () {
                                    cubit.onpressed("4");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "5",
                                  function: () {
                                    cubit.onpressed("5");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "6",
                                  function: () {
                                    cubit.onpressed("6");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "1",
                                  function: () {
                                    cubit.onpressed("1");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "2",
                                  function: () {
                                    cubit.onpressed("2");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "3",
                                  function: () {
                                    cubit.onpressed("3");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: ".",
                                  function: () {
                                    cubit.onpressed(".");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "0",
                                  function: () {
                                    cubit.onpressed("0");
                                  }),
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "%",
                                  function: () {
                                    cubit.onpressed("%");
                                  }),
                            ]),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Table(
                          children: [
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "*",
                                  function: () {
                                    cubit.onpressed("*");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "-",
                                  function: () {
                                    cubit.onpressed("-");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 1,
                                  text: "+",
                                  function: () {
                                    cubit.onpressed("+");
                                  }),
                            ]),
                            TableRow(children: [
                              rowCalculator(
                                  context: context,
                                  height: 2,
                                  text: "=",
                                  function: () {
                                    cubit.onpressed("=");
                                  }),
                            ])
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
