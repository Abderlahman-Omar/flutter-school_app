import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/generated/l10n.dart';
import 'package:school_app/helpers/constants.dart';
import 'package:school_app/widgets/results_screen_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static String routeName = 'ResultScreen';

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
          S.of(context).resultsTitle,
          style: const TextStyle(
            color: kTextWhiteColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Expanded(
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
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40.h,
                  left: 20.w,
                  right: 20.w,
                ),
                child: Column(
                  children: [
                    ResultsScreenCard(
                      lecName: S.of(context).lecTitle,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ResultsScreenCard(
                      lecName: S.of(context).lecTitle1,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ResultsScreenCard(
                      lecName: S.of(context).lecTitle2,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ResultsScreenCard(
                      lecName: S.of(context).lecTitle3,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ResultsScreenCard(
                      lecName: S.of(context).lecTitle4,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
