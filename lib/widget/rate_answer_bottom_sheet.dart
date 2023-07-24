import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/model/comments.dart';
import 'package:graduation/widget/rate_answer_second_bottom_sheet.dart';
import 'package:graduation/widget/rating_icons.dart';

class RateAnswer extends StatefulWidget {
  Comments comment;

  RateAnswer({required this.comment, Key? key}) : super(key: key);

  @override
  State<RateAnswer> createState() => _RateAnswerState();
}

class _RateAnswerState extends State<RateAnswer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.w,
        right: 23.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rate ${widget.comment.name}\'s answer',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingIcons(title: 'Terrible',icon: 'Terrible',),
              RatingIcons(title: 'Bad',icon: 'Bad',),
              RatingIcons(title: 'Okay',icon: 'Okay',),
              RatingIcons(title: 'Good',icon: 'Good',),
              RatingIcons(title: 'Perfect',icon: 'Perfect',),
            ],
          ),
          SizedBox(height: 18.h,),
          DottedLine(),
          SizedBox(height: 24.h,),
          Text(
            'Reply to ${widget.comment.name}\'s answer',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 22.h,),
          TextFormField(
            decoration: InputDecoration(
              label:  Text('Reply to ${widget.comment.name} answer'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 1.w),
              ),
            ),
          ),          SizedBox(height: 96.h,),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                AppRouter.popRouter();
                openBottomSheet(context, SecondRateAnswer(comment: widget.comment));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.r),
                ),
                backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                minimumSize: Size(176.w, 56.h),
              ),
              child: Text(
                'Done!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      showDragHandle: true,
      useSafeArea: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: 534.h,
            width: 375.w,
            child: widget,
          ),
        );
      },
    );
  }

}

