import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    this.error,
    this.controller,
    this.onValidate,
    this.initialValue,
    this.autofocus = false,
    this.isPassword = false,
    this.contentPadding,
    this.onChanged,
  }) : super(key: key);

  final String labelText;

  final String? error;

  final TextEditingController? controller;

  final String? Function(String?)? onValidate;

  final ValueChanged<String>? onChanged;

  final String? initialValue;

  final bool isPassword;

  final bool autofocus;

  final EdgeInsets? contentPadding;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _contentVisible = true;

  @override
  void initState() {
    super.initState();
    if (widget.isPassword) _contentVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 56.h,
      width: 210.w,
      child: TextFormField(
        autofocus: widget.autofocus,
        controller: widget.controller,
        initialValue: widget.initialValue,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.gray60,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(
          //     width: 1,
          //   ),
          //   borderRadius: BorderRadius.circular(8.r),
          // ),
        ),
        validator: widget.onValidate,
        obscureText: !_contentVisible,
        enableSuggestions: widget.isPassword ? false : true,
        autocorrect: widget.isPassword ? false : true,
        onChanged: widget.onChanged,
      ),
    );
  }
}
