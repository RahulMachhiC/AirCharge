// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  double height;
  double width;
  Color color;

  PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Card(
          // elevation: 1.8.sp,tyt766
          child: SizedBox(
            height: height,
            width: width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2.sp,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.sp)),
                backgroundColor: color,
              ),
              onPressed: onPressed,
              child: child,
            ),
          ),
        ),
      );
}
