import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/room_sheet.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        openBottomSheet(context, RoomSheet());
      },
      child: Container(
        height: 181.h,
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
              SizedBox(
                height: 1.h,
              ),
              Text(
                'The importance of User Experien...',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
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
              Center(child: Image.asset('assets/images/room_card_bottom.png')),
              // SizedBox(
              //   height: 31.h,
              //   width: 291.w,
              //   child: Stack(
              //     children: [
              //       Image.asset('assets/images/ahmad_ali_room.png'),
              //       Padding(
              //         padding:  EdgeInsets.only(left: 24.0.w),
              //         child: Image.asset('assets/images/noor.png'),
              //       ),
              //       Padding(
              //         padding:  EdgeInsets.only(left: 50.0.w),
              //         child: Image.asset('assets/images/fatena.png'),
              //       ),
              //     ],
              //   ),
              // ),
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
