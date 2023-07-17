import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/sub_pages/notification_screen.dart';
import 'package:graduation/sub_pages/search_page.dart';
import 'package:graduation/widget/room_card.dart';
import 'package:graduation/widget/room_sheet.dart';
import 'package:provider/provider.dart';

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
        physics: const AlwaysScrollableScrollPhysics(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                          color: const Color.fromRGBO(142, 142, 149, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      Provider.of<AuthProvider>(context).nameController.text,
                      style: TextStyle(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        height: 1.5.h,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    AppRouter.NavigateToWidget(const NotificationScreen());
                  },
                  child: SvgPicture.asset('assets/icons/not.svg'),
                ),
                SizedBox(
                  width: 6.w,
                ),
                InkWell(
                  onTap: () {
                    AppRouter.NavigateToWidget(const SearchPage());
                  },
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            const RoomCard(),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                openBottomSheet(context, const RoomSheet());
              },
              child: Container(
                width: 335.w,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(251, 245, 232, 1),
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
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins'),
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/icons/bill_n.svg'),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'The importance of User Experien...',
                        style: TextStyle(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
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
                                  fontFamily: 'Poppins'),
                              children: [
                                const TextSpan(
                                  text: 'Host:',
                                ),
                                TextSpan(
                                  text: ' Ahmad Ali',
                                  style: TextStyle(
                                      color:
                                          const Color.fromRGBO(36, 36, 36, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      wordSpacing: 2,
                                      height: 1.4.h,
                                      fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.65.h,
                      ),
                      const DottedLine(
                        dashColor: Color.fromRGBO(36, 36, 36, 0.5),
                        dashGapLength: 6,
                      ),
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
                      Row(
                        children: [
                          Container(
                            width: 86.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('assets/icons/day.svg'),
                                Text(
                                  'Today',
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
                            width: 102.w,
                            height: 31.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset('assets/icons/time.svg'),
                                Text(
                                  '08:00 AM',
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
                        height: 14.h,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt et doloreLorem ipsum dolor sit amet, consectetur adipisicing 💬',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            height: 1.57,
                            color: const Color.fromRGBO(36, 36, 36, 1),
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const RoomCard(),
          ],
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
