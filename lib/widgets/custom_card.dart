import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/helpers/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      required this.description,
      required this.bgColor});
  final String title;
  final String description;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 9,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(
          kDefaultPadding.r,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              color: kTextBlackColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 25.sp,
              color: kTextBlackColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
