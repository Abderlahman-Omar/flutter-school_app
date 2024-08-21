import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/helpers/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.btnText, required this.btnIcon});
  final String btnText;
  final IconData btnIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            kSecondaryColor,
            kPrimaryColor,
          ],
          begin: FractionalOffset(0, 0),
          end: FractionalOffset(0.5, 0),
          stops: [0, 1],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(kDefaultPadding.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            btnText,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.sp,
              color: kTextWhiteColor,
            ),
          ),
          Spacer(),
          Icon(
            btnIcon,
            size: 30.sp,
            color: kOtherColor,
          ),
        ],
      ),
    );
  }
}
