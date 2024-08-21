import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_app/helpers/constants.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard(
      {super.key, required this.assetName, required this.cardText});
  final String assetName;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(
          kDefaultPadding.r,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetName,
            height: 40.h,
            width: 40.w,
            color: kOtherColor,
          ),
          Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.sp,
              color: kTextWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
