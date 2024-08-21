import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/helpers/constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key, required this.keyboardType, required this.labelText});
  final TextInputType keyboardType;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: keyboardType,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: kTextBlackColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w300,
            ),
            decoration: InputDecoration(
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              isDense: true,
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: kTextLightColor,
                height: 0.5.h,
              ),
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: kTextBlackColor,
                height: 0.5.h,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                  width: 0.7.w,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
