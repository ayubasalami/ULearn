import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo([String message = '']) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    fontSize: 16.sp,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.blue,
    textColor: Colors.white,
  );
}
