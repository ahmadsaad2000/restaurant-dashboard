import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';

class AuthWidgets {
  // final TextEditingController controller;
  // const AuthWidgets({
  //   required this.controller,
  // });
  static Widget buildInputField(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(8),
          FilteringTextInputFormatter.digitsOnly
        ],
        style: TextStyle(color: AppColorManager.blackColor, fontSize: 25),
        decoration: InputDecoration(
          hoverColor: AppColorManager.whiteColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: BorderSide(color: AppColorManager.grayColor)),
          hintText: "_  _  _  _  _  _  _  _",
          filled: true,
          fillColor: AppColorManager.backColor,
        ),
      ),
    );
  }
}
