import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/room_card.dart';

class RoomContent extends StatefulWidget {
  const RoomContent({Key? key}) : super(key: key);

  @override
  State<RoomContent> createState() => _RoomContentState();
}

class _RoomContentState extends State<RoomContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                // SvgPicture.asset('assets/icons/Path.svg',color: Colors.black,height: 40.h,width: 40.w,),
                Image.asset(
                  'assets/icons/a1.png',
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Ahmad Ali',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset('assets/icons/notification.svg'),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset('assets/icons/search.svg'),
              ],
            ),
            SizedBox(
              height: 37.h,
            ),
            RoomCard(),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 327.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(251, 245, 232, 1),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 21.41.h, left: 20.w, right: 20.w, bottom: 30.17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Upcoming',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'The importance of User Experien...',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 6.h,
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
                                    fontSize: 14,
                                    wordSpacing: 2,
                                    height: 1.4.h),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.65.h,
                    ),
                    DottedLine(dashColor: Colors.grey),
                    SizedBox(
                      height: 9.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/Path.png'),
                        Image.asset('assets/images/Path-1.png'),
                        Image.asset('assets/images/Path-3.png'),
                        Image.asset('assets/images/Path-4.png'),
                        Image.asset('assets/images/Path-5.png'),
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Image.asset('assets/images/room_date.png'),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt et doloreLorem ipsum dolor sit amet, consectetur adipisicing 💬',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            RoomCard(),
          ],
        ),
      ),
    );
  }
}
