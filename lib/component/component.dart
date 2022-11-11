import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget rowCalculator(
        {required BuildContext context,
        required double height,
        required String text,
        required void Function() function}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
      height: MediaQuery.of(context).size.height * .1 * height,
      child: OutlinedButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
    );
