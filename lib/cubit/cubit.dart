import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<CalculatorStates> {
  CalculatorCubit() : super(CalculatorInialtStates());
  static CalculatorCubit get(context) => BlocProvider.of(context);
  String equation = "0";
  String result = "0";
  void onpressed(String text) {
    if (text == "C") {
      equation = "0";
      result = "0";
    } else if (text == "D") {
      equation = equation.substring(0, equation.length - 1);
      if (equation == "") {
        equation = "0";
      }
    } else if (text == "=") {
      try {
        Parser p = Parser();
        Expression exp = p.parse(equation);
        ContextModel cm = ContextModel();
        result = "${exp.evaluate(EvaluationType.REAL, cm)}";
        // equation = equation.replaceAll("*", "X");
        // equation = equation.replaceAll("/", "÷");
      } catch (e) {
        result = "Error";
      }
    } else {
      if (equation == "0") {
        equation = text;
      } else {
        equation = equation + text;
      }
    }
    emit(ChangeState());
  }
}
