import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/helpers/constants.dart';

class ResultsScreenCard extends StatelessWidget {
  const ResultsScreenCard({super.key, required this.lecName});
  final String lecName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120.h,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(
          kDefaultPadding.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10.w,
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lecName,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Score :',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '90/100',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grade :',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Excellent',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
