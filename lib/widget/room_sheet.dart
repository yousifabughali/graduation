import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/sub_pages/room_page.dart';

class RoomSheet extends StatefulWidget {
  const RoomSheet({Key? key}) : super(key: key);

  @override
  State<RoomSheet> createState() => _RoomSheetState();
}

class _RoomSheetState extends State<RoomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 94.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Now',
                      style: TextStyle(
                          color: Color.fromRGBO(36, 36, 36, 0.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
                Text(
                  'The importance of User Experience design in today\'s digital age',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(36, 36, 36, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                DottedLine(
                  dashColor: Color.fromRGBO(36, 36, 36, 0.5),
                  dashGapLength: 6,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 225.h,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/a1.png',
                            height: 70.h,
                            width: 70.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          //TODO: Take this
          Row(
            children: [
              Container(
                width: 65.w,
                height: 30.17.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/icons/person_avatar.svg'),
                    Text(
                      '155',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(36, 36, 36, 1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              Container(
                width: 65.w,
                height: 30.17.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/icons/microphone1.svg'),
                    Text(
                      '5',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(36, 36, 36, 1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/microphone.svg'),
              SizedBox(
                width: 11.w,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Host:',
                    ),
                    TextSpan(
                      text: ' Ahmad Ali',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          wordSpacing: 2,
                          height: 1.4.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt et doloreLorem ipsum dolor sit amet, consectetur adipisicing  sed do eiusmod tempor incididunt et doloreLorem ipsum dolor sit amet, consectetur adipisicing consectetur adipisicing  💬',
            style: TextStyle(
              color: Color.fromRGBO(36, 36, 36, 1),
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              height: 1.57.h,
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              AppRouter.NavigateToWidget(RoomScreen());
            },
            child: Text(
              'Join the room in progress',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins'),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r)),
              backgroundColor: Color.fromRGBO(36, 36, 36, 1),
              minimumSize: Size(325.w, 56.h),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
        ],
      ),
    );
  }
}
