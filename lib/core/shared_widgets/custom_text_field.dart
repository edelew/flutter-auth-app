import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum InputType { text, phoneNumber, smsCode, password }

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.inputType,
    this.controller,
    this.isPassword = false,
  }) : super(key: key);

  final String labelText;

  final InputType inputType;

  final TextEditingController? controller;

  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode myFocusNode;

  bool _contentVisible = true;

  @override
  void initState() {
    super.initState();

    if (widget.isPassword) _contentVisible = false;

    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210.w,
      child: TextFormField(
        focusNode: myFocusNode,
        controller: widget.controller,
        inputFormatters: selectInputFormatters(widget.inputType),
        keyboardType: selectKeyboardType(widget.inputType),
        cursorWidth: 1.w,
        cursorColor: AppColors.black,
        onTap: _requestFocus,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText,
          hoverColor: AppColors.red,
          labelStyle: TextStyle(
              color: myFocusNode.hasFocus ? AppColors.black : AppColors.gray80),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.gray60,
              width: 1.r,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
              width: 2.r,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 1.r,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        obscureText: !_contentVisible,
        enableSuggestions: widget.isPassword ? false : true,
        autocorrect: widget.isPassword ? false : true,
      ),
    );
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
  }

  TextInputType selectKeyboardType(InputType inputType) {
    switch (inputType) {
      case InputType.phoneNumber:
        return TextInputType.number;
      case InputType.smsCode:
        return TextInputType.number;
      case InputType.password:
        return TextInputType.visiblePassword;
      case InputType.text:
        return TextInputType.text;
    }
  }

  List<TextInputFormatter> selectInputFormatters(InputType inputType) {
    switch (inputType) {
      case InputType.phoneNumber:
        return [
          MaskedInputFormatter('+# (###) ###-##-##'),
        ];
      default:
        return [];
    }
  }
}
