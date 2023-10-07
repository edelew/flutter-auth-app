import 'package:flutter/material.dart';

abstract class SnackBarService {
  static Future<void> showSnackBar(BuildContext context, String message) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(content: Text(message));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
