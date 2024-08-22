import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/screens/profile_screen.dart';
import 'package:school_app/screens/result_screen.dart';
import 'package:school_app/screens/time_table_screen.dart';
import 'package:school_app/widgets/custom_card.dart';
import 'package:school_app/widgets/home_page_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(
              kDefaultPadding.r,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              S.of(context).hi,
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 16.sp,
                                color: kTextWhiteColor,
                              ),
                            ),
                            Text(
                              S.of(context).studentFirstName,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: kTextWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2.h,
                        ),
                        Text(
                          S.of(context).classLocation,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            color: kTextWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2.h,
                        ),
                        Container(
                          width: 100.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius: BorderRadius.circular(
                              kDefaultPadding.r,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              S.of(context).schoolYear,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: kTextBlackColor,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding / 6.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProfileScreen();
                            },
                          ),
                        );
                      },
                      child: CircleAvatar(
                        minRadius: 50.r,
                        maxRadius: 50.r,
                        backgroundColor: kSecondaryColor,
                        backgroundImage: const AssetImage(
                          'assets/images/student_profile.jpeg',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCard(
                      title: S.of(context).attendance,
                      description: S.of(context).attendanceNo,
                      bgColor: kOtherColor,
                    ),
                    CustomCard(
                      title: S.of(context).fees,
                      description: S.of(context).feesNo,
                      bgColor: kOtherColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3.r),
                  topRight: Radius.circular(kDefaultPadding * 3.r),
                ),
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: kDefaultPadding / 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/quiz.svg',
                          cardText: S.of(context).takeQuiz,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/assignment.svg',
                          cardText: S.of(context).assignment,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/holiday.svg',
                          cardText: S.of(context).holidays,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return TimeTableScreen();
                              },
                            ),
                          );
                        },
                        child: HomePageCard(
                          assetName: 'assets/icons/timetable.svg',
                          cardText: S.of(context).timeTable,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ResultScreen();
                              },
                            ),
                          );
                        },
                        child: HomePageCard(
                          assetName: 'assets/icons/result.svg',
                          cardText: S.of(context).result,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/datesheet.svg',
                          cardText: S.of(context).dataSheet,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/ask.svg',
                          cardText: S.of(context).ask,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/gallery.svg',
                          cardText: S.of(context).gallery,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/resume.svg',
                          cardText: S.of(context).leave,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/lock.svg',
                          cardText: S.of(context).change,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/event.svg',
                          cardText: S.of(context).events,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: HomePageCard(
                          assetName: 'assets/icons/logout.svg',
                          cardText: S.of(context).logout,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
