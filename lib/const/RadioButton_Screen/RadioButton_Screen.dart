import 'package:flutter/material.dart';

Widget myRadioButton({String? title, int? value, Function? onChanged}) {
  var groupValue;
  var onChanged;
  return RadioListTile(
    value: value,
    groupValue: groupValue,
    onChanged: onChanged,
    title: Text("$title"),
  );
}
