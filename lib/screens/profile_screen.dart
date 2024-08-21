import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName = 'ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextWhiteColor,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          S.of(context).profileTitle,
          style: TextStyle(
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
                  Icon(
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
