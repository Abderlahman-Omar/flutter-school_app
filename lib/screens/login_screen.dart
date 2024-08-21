import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/screens/home_screen.dart';
import 'package:school_app/widgets/custom_button.dart';
import 'package:school_app/widgets/custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splash.png',
                  width: 150.w,
                  height: 150.h,
                ),
                SizedBox(
                  height: kDefaultPadding / 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).loginTitle1,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 35.sp,
                        color: kTextWhiteColor,
                      ),
                    ),
                    Text(
                      S.of(context).title1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.sp,
                        color: kTextWhiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding / 16.h,
                ),
                Text(
                  S.of(context).signIn,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.sp,
                    color: kTextWhiteColor,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 16.h,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3.r),
                topRight: Radius.circular(kDefaultPadding * 3.r),
              ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(
                30.r,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  CustomFormField(
                    keyboardType: TextInputType.emailAddress,
                    labelText: S.of(context).loginInput1,
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  CustomFormField(
                    keyboardType: TextInputType.visiblePassword,
                    labelText: S.of(context).loginInput2,
                  ),
                  SizedBox(
                    height: kDefaultPadding.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    child: CustomButton(
                      btnText: S.of(context).signInBtn,
                      btnIcon: Icons.arrow_forward,
                    ),
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
