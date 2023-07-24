import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/model/comments.dart';
import 'package:graduation/widget/rating_icons.dart';
import 'package:graduation/widget/second_rating_icons.dart';

class SecondRateAnswer extends StatefulWidget {
  Comments comment;

  SecondRateAnswer({required this.comment, Key? key}) : super(key: key);

  @override
  State<SecondRateAnswer> createState() => _SecondRateAnswerState();
}

class _SecondRateAnswerState extends State<SecondRateAnswer> {
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
              SecondRatingIcons(title: 'Terrible',icon: '0',),
              SecondRatingIcons(title: 'Bad',icon: '2',),
              SecondRatingIcons(title: 'Okay',icon: '3',),
              SecondRatingIcons(title: 'Good',icon: '5',),
              SecondRatingIcons(title: 'Perfect',icon: '12',),
            ],
          ),
          SizedBox(height: 18.h,),
          DottedLine(),
          SizedBox(height: 24.h,),
          Text(
            '15 Reply',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 22.h,),
          SizedBox(
            height: 264.h,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 335.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/a1.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 275.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ali',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(36, 36, 36, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins'
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Text(
                              'Lorem Ipsum is simply dummy text of the Lorem Ipsum is simply dummy text ',
                              style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                height:1.5,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}

