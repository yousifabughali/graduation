import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/room_sheet.dart';

class RoomCard extends StatelessWidget {
  String title;
   RoomCard({
     required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        openBottomSheet(context, RoomSheet());
      },
      child: Container(
        width: 335.w,
        decoration: BoxDecoration(
          color: Color.fromRGBO(251, 245, 232, 1),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w,top: 20.h,bottom: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'Now',
                    style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 0.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
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
                        color: const Color.fromRGBO(36, 36, 36, 0.5),
                        fontFamily: 'Poppins',
                      ),
                      children: [
                        TextSpan(
                          text: 'Host:',
                        ),
                        TextSpan(
                          text: ' Ahmad Ali',
                          style: TextStyle(
                              color: const Color.fromRGBO(36, 36, 36,1),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              wordSpacing: 2,
                              height: 1.4.h,
                            fontFamily: 'Poppins'
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              DottedLine(dashColor: Colors.grey),
              SizedBox(height: 12.h,),
              SizedBox(
               width: 291.w,
               child: Row(
                 children: [
                   Image.asset('assets/icons/group.png',height: 31.14,width: 128.w,),
                   Spacer(),
                   Container(
                     width: 65.w,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12.r),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12.r),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
             ),
            ],
          ),
        ),
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
        return SizedBox(
          height: 679.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
