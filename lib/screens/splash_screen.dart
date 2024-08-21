import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (routeName) => false);
    });

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).title1,
                  style: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 50.sp,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  S.of(context).title2,
                  style: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 50.sp,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/splash.png',
              height: 150.h,
              width: 150.w,
            ),
            // SizedBox(
            //   height: kDefaultPadding.h,
            // ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            //   child: Container(
            //     width: double.infinity,
            //     height: 60.h,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         colors: [
            //           kSecondaryColor,
            //           kPrimaryColor,
            //         ],
            //         begin: FractionalOffset(0, 0),
            //         end: FractionalOffset(0.5, 0),
            //         stops: [0, 1],
            //         tileMode: TileMode.clamp,
            //       ),
            //       borderRadius: BorderRadius.circular(kDefaultPadding.r),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Spacer(),
            //         Text(
            //           S.of(context).signInBtn2,
            //           style: TextStyle(
            //             fontWeight: FontWeight.normal,
            //             fontSize: 20.sp,
            //             color: kTextWhiteColor,
            //           ),
            //         ),
            //         Spacer(),
            //         Icon(
            //           Icons.arrow_forward,
            //           size: 30.sp,
            //           color: kOtherColor,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
