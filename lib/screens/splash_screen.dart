import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/main.dart';
import 'package:school_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Locale currentLocale = const Locale('en');

  void changeLanguage(Locale locale) {
    setState(() {
      currentLocale = locale;
    });
    SchoolApp.of(context)?.setLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 5), () {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, LoginScreen.routeName, (routeName) => false);
    // });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: DropdownButton<Locale>(
          value: currentLocale,
          items: S.delegate.supportedLocales.map((locale) {
            return DropdownMenuItem(
              value: locale,
              child: Text(locale.languageCode.toUpperCase()),
            );
          }).toList(),
          onChanged: (Locale? locale) {
            if (locale != null) {
              changeLanguage(locale);
            }
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
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
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Center(
              child: GestureDetector(
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
                child: Container(
                  width: double.infinity,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.circular(kDefaultPadding.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        S.of(context).signInBtn2,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.sp,
                          color: kTextBlackColor,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        size: 30.sp,
                        color: kTextBlackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 //