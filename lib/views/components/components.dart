import 'package:flutter/material.dart';

Widget defaultTextFormField({
  String? Function(String? val)? validate,
  required String htext,
  bool isPass = false,
  Color cursorColor = Colors.black,
  double cursorHeight = 22.0,
  required IconData prefixIcon,
  IconData? sufixIcon,
  required TextEditingController? controller,
  TextInputAction? textInputAction,
  int? maxLength,
  int maxLines = 1,
  minLines,
  VoidCallback? pressicon,
  tapFunction,
  change,
  onsubmit,
  TextInputType? textInputType,
  Widget? label,
  bool? isEnable = true,
}) =>
    TextFormField(
      onFieldSubmitted: onsubmit,
      enabled: isEnable,
      validator: (value) => validate!(value),
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      controller: controller,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      obscureText: isPass,
      keyboardType: textInputType,
      onTap: tapFunction,
      onChanged: change,
      decoration: InputDecoration(
          label: label,
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: IconButton(
            onPressed: pressicon,
            icon: Icon(
              sufixIcon,
            ),
            autofocus: false,
            color: Colors.black,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: htext),
    );
