import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/screens/home_screen.dart';
import 'package:school_app/screens/login_screen.dart';
import 'package:school_app/screens/profile_screen.dart';
import 'package:school_app/screens/splash_screen.dart';
import 'package:school_app/screens/time_table_screen.dart';

void main() {
  runApp(const SchoolApp());
}

class SchoolApp extends StatefulWidget {
  const SchoolApp({Key? key}) : super(key: key);

  static _SchoolAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<_SchoolAppState>();
  }

  @override
  _SchoolAppState createState() => _SchoolAppState();
}

class _SchoolAppState extends State<SchoolApp> {
  Locale _locale = const Locale('en');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            primaryColor: kPrimaryColor,
            // textTheme: GoogleFonts.sourceSans3TextTheme(
            //   Theme.of(context).textTheme.apply().copyWith(),
            // ),
          ),
          locale: _locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          routes: {
            SplashScreen.routeName: (context) {
              return const SplashScreen();
            },
            LoginScreen.routeName: (context) {
              return const LoginScreen();
            },
            HomeScreen.routeName: (context) {
              return const HomeScreen();
            },
            ProfileScreen.routeName: (context) {
              return const ProfileScreen();
            },
            TimeTableScreen.routeName: (context) {
              return const TimeTableScreen();
            },
          },
          initialRoute: SplashScreen.routeName,
        );
      },
    );
  }
}
