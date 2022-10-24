import 'package:flutter/material.dart';

import 'Constants.dart';

Widget defaultButton({required void Function()? onPressed,
  Color borderSideColor = defaultColor,
  Color background = defaultColor,
  double? width = 265,
  Color? textColor,
  double? height = 48,
  required String text,
  IconData? icon,
  required BuildContext context,
  required isUpper}) =>
    SizedBox(
      width: width,
      height:height,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
            side: BorderSide(color: borderSideColor)),
        color: background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isUpper ? text.toUpperCase() : text,
              style:TextStyle(
                fontSize: 15,
                color: textColor,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            if (icon != null)
              Icon(
                icon,
                color: textColor,
                size: 15,
              )
          ],
        ),
      ),
    );

Widget defTextEditing({
  required TextEditingController controller,
  required String? Function(String? v) validate,
  void Function()? onTap,
  void Function(String v)? onChanged,
  void Function(String v)? onSubmit,
  type = TextInputType.text,
  IconData? suffix,
  void Function()? suffixPressed,
  required bool isPassword,
  required String label,
  IconData? prefix,
}) =>
    TextFormField(
      keyboardType: type,
      validator: validate,
      controller: controller,
      onTap: onTap,

      onChanged: onChanged,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15, horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        hintText: label,
          hintStyle:TextStyle(
            color: Colors.black.withOpacity(0.4),
            fontSize: 16,
          ),
        prefixIcon: prefix != null ? Icon(prefix) : null,
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffix),
        ),
      ),
    );

Widget defaultTextButton({
  required String text,
  Color textColor = defaultColor,
  void Function()? onPressed,
  bool isUpper = false,
  double? size,
  FontWeight? fontWeight
}) =>
    TextButton(
        onPressed: onPressed,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
              color: textColor,
                  fontSize: size,
            fontWeight: fontWeight
          ),
        )
    );
