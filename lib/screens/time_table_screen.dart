import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/widgets/time_table_card.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});
  static String routeName = 'TimeTableScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: kTextWhiteColor,
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text(
          S.of(context).timeTable,
          style: const TextStyle(
            color: kTextWhiteColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  TimeTableCard(
                    lecName: S.of(context).lecTitle,
                    lecTime: S.of(context).lecTime,
                    lecDay: S.of(context).lecDay1,
                    instructorName: S.of(context).instructorName1,
                    lecPlace: S.of(context).lecPlace,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TimeTableCard(
                    lecName: S.of(context).lecTitle1,
                    lecTime: S.of(context).lecTime,
                    lecDay: S.of(context).lecDay2,
                    instructorName: S.of(context).instructorName2,
                    lecPlace: S.of(context).lecPlace,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TimeTableCard(
                    lecName: S.of(context).lecTitle2,
                    lecTime: S.of(context).lecTime,
                    lecDay: S.of(context).lecDay3,
                    instructorName: S.of(context).instructorName3,
                    lecPlace: S.of(context).lecPlace,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TimeTableCard(
                    lecName: S.of(context).lecTitle3,
                    lecTime: S.of(context).lecTime,
                    lecDay: S.of(context).lecDay4,
                    instructorName: S.of(context).instructorName4,
                    lecPlace: S.of(context).lecPlace,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TimeTableCard(
                    lecName: S.of(context).lecTitle4,
                    lecTime: S.of(context).lecTime,
                    lecDay: S.of(context).lecDay5,
                    instructorName: S.of(context).instructorName5,
                    lecPlace: S.of(context).lecPlace,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
