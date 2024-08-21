import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/helpers/constants.dart';

class TimeTableCard extends StatelessWidget {
  const TimeTableCard({
    super.key,
    required this.lecName,
    required this.lecTime,
    required this.lecDay,
    required this.instructorName,
    required this.lecPlace,
  });
  final String lecName;
  final String lecTime;
  final String lecDay;
  final String instructorName;
  final String lecPlace;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(
          kDefaultPadding.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lecName,
              style: TextStyle(
                fontSize: 16.sp,
                color: kTextBlackColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lecTime,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  lecDay,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Divider(
                thickness: 1.h,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  instructorName,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  lecPlace,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
