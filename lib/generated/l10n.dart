// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Student`
  String get title1 {
    return Intl.message(
      'Student',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Portal`
  String get title2 {
    return Intl.message(
      'Portal',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get profileTitle {
    return Intl.message(
      'My Profile',
      name: 'profileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Time Table`
  String get timeTitle {
    return Intl.message(
      'Time Table',
      name: 'timeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get resultsTitle {
    return Intl.message(
      'Results',
      name: 'resultsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Abdelrahman`
  String get studentFirstName {
    return Intl.message(
      'Abdelrahman',
      name: 'studentFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Omar`
  String get studentLastName {
    return Intl.message(
      'Omar',
      name: 'studentLastName',
      desc: '',
      args: [],
    );
  }

  /// `Level 300`
  String get studentLvl {
    return Intl.message(
      'Level 300',
      name: 'studentLvl',
      desc: '',
      args: [],
    );
  }

  /// `A+`
  String get studentDegree {
    return Intl.message(
      'A+',
      name: 'studentDegree',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Development`
  String get courseName {
    return Intl.message(
      'Flutter Development',
      name: 'courseName',
      desc: '',
      args: [],
    );
  }

  /// `9:00 AM`
  String get lecTime {
    return Intl.message(
      '9:00 AM',
      name: 'lecTime',
      desc: '',
      args: [],
    );
  }

  /// `20/08/2024`
  String get lecDate {
    return Intl.message(
      '20/08/2024',
      name: 'lecDate',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Ibrahim`
  String get instructorName {
    return Intl.message(
      'Ahmed Ibrahim',
      name: 'instructorName',
      desc: '',
      args: [],
    );
  }

  /// `125 Point`
  String get numberedDegree {
    return Intl.message(
      '125 Point',
      name: 'numberedDegree',
      desc: '',
      args: [],
    );
  }

  /// `Fourth Year`
  String get year {
    return Intl.message(
      'Fourth Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `First Semister`
  String get semister {
    return Intl.message(
      'First Semister',
      name: 'semister',
      desc: '',
      args: [],
    );
  }

  /// `Hi `
  String get loginTitle1 {
    return Intl.message(
      'Hi ',
      name: 'loginTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Hi `
  String get hi {
    return Intl.message(
      'Hi ',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Sign In to continue`
  String get signIn {
    return Intl.message(
      'Sign In to continue',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Email / Mobile Number`
  String get loginInput1 {
    return Intl.message(
      'Email / Mobile Number',
      name: 'loginInput1',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginInput2 {
    return Intl.message(
      'Password',
      name: 'loginInput2',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get signInBtn {
    return Intl.message(
      'SIGN IN',
      name: 'signInBtn',
      desc: '',
      args: [],
    );
  }

  /// `To SignIN Page`
  String get signInBtn2 {
    return Intl.message(
      'To SignIN Page',
      name: 'signInBtn2',
      desc: '',
      args: [],
    );
  }

  /// `Class X-II A | Roll no: 12`
  String get classLocation {
    return Intl.message(
      'Class X-II A | Roll no: 12',
      name: 'classLocation',
      desc: '',
      args: [],
    );
  }

  /// `2024-2025`
  String get schoolYear {
    return Intl.message(
      '2024-2025',
      name: 'schoolYear',
      desc: '',
      args: [],
    );
  }

  /// `Attendance`
  String get attendance {
    return Intl.message(
      'Attendance',
      name: 'attendance',
      desc: '',
      args: [],
    );
  }

  /// `90.25 %`
  String get attendanceNo {
    return Intl.message(
      '90.25 %',
      name: 'attendanceNo',
      desc: '',
      args: [],
    );
  }

  /// `Fees`
  String get fees {
    return Intl.message(
      'Fees',
      name: 'fees',
      desc: '',
      args: [],
    );
  }

  /// `600 $`
  String get feesNo {
    return Intl.message(
      '600 \$',
      name: 'feesNo',
      desc: '',
      args: [],
    );
  }

  /// `Take Quiz`
  String get takeQuiz {
    return Intl.message(
      'Take Quiz',
      name: 'takeQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Assignment`
  String get assignment {
    return Intl.message(
      'Assignment',
      name: 'assignment',
      desc: '',
      args: [],
    );
  }

  /// `Holidays`
  String get holidays {
    return Intl.message(
      'Holidays',
      name: 'holidays',
      desc: '',
      args: [],
    );
  }

  /// `Time Table`
  String get timeTable {
    return Intl.message(
      'Time Table',
      name: 'timeTable',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Data Sheet`
  String get dataSheet {
    return Intl.message(
      'Data Sheet',
      name: 'dataSheet',
      desc: '',
      args: [],
    );
  }

  /// `Ask`
  String get ask {
    return Intl.message(
      'Ask',
      name: 'ask',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Leave Application`
  String get leave {
    return Intl.message(
      'Leave Application',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change {
    return Intl.message(
      'Change Password',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get events {
    return Intl.message(
      'Events',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
