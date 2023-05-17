import 'package:flutter/material.dart';

//  snackbar
SnackBar customSnackbar(message) => SnackBar(
  content: Text(
    message,
    style: const TextStyle(
        color: Colors.black54,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold),
  ),
  margin: const EdgeInsets.only(bottom: 16),
  backgroundColor: Colors.white,
  clipBehavior: Clip.antiAlias,
  behavior: SnackBarBehavior.floating,
  action: SnackBarAction(
    label: "Undo",
    onPressed: () {},
  ),
);