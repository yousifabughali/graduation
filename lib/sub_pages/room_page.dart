import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        bottomNavigationBar: Container(
          clipBehavior: Clip.antiAlias,
          height: 90.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 35.5.w),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Leave Room',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(36, 36, 36, 1),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.r),
                    ),
                    backgroundColor: Color.fromRGBO(251, 245, 232, 1),
                    minimumSize: Size(176.w, 56.h),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                SvgPicture.asset('assets/icons/muted.svg'),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset('assets/icons/raise.svg'),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 39.h),
          child: Column(
            children: [
              SizedBox(
                height: 142.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Now',
                          style: TextStyle(
                              color: Colors.grey,
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
                              SvgPicture.asset(
                                  'assets/icons/person_avatar.svg'),
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
                    DottedLine(
                        dashColor: Color.fromRGBO(36, 36, 36, 0.5),
                        dashGapLength: 6),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/icons/a1.png'),
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w, top: 35.h),
                                  child: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/oval.svg',
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.5.w, top: 7.h),
                                        child:
                                        SvgPicture.asset('assets/icons/camera.svg'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
