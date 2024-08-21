import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/widgets/profile_info.dart';
import 'package:school_app/widgets/profile_screen_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName = 'ProfileScreen';

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
          S.of(context).profileTitle,
          style: const TextStyle(
            color: kTextWhiteColor,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                right: kDefaultFontSize / 2.w,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: kTextWhiteColor,
                  ),
                  kHalfSizedBox,
                  Text(
                    S.of(context).report,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      color: kTextWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity.w,
              height: 150.h,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    kDefaultPadding * 2.r,
                  ),
                  bottomRight: Radius.circular(
                    kDefaultPadding * 2.r,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50.r,
                    minRadius: 50.r,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: const AssetImage(
                      "assets/images/student_profile.jpeg",
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            S.of(context).studentFirstName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: kTextWhiteColor,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            S.of(context).studentLastName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: kTextWhiteColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        S.of(context).classLocation,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.sp,
                          color: kTextWhiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileScreenData(
                  title: S.of(context).regNo,
                  subTitle: '2024-ASDF-2025',
                ),
                ProfileScreenData(
                  title: S.of(context).academicYear,
                  subTitle: S.of(context).schoolYear,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileScreenData(
                  title: S.of(context).admissionDate,
                  subTitle: S.of(context).admissionDateNo,
                ),
                ProfileScreenData(
                  title: S.of(context).birthDay,
                  subTitle: S.of(context).birthDayNo,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ProfileInfo(
                    title: S.of(context).studentNameTitle,
                    subTitle: S.of(context).studentName,
                  ),
                  ProfileInfo(
                    title: S.of(context).fatherNameTitle,
                    subTitle: S.of(context).fatherName,
                  ),
                  ProfileInfo(
                    title: S.of(context).studentLvlTitle,
                    subTitle: S.of(context).studentLvl,
                  ),
                  ProfileInfo(
                    title: S.of(context).studentLastGradeTitle,
                    subTitle: S.of(context).studentLastGrade,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
