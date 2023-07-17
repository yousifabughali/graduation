import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/raise_hand.dart';
import 'package:graduation/widget/speaking_room_item.dart';

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
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        bottomNavigationBar: Container(
          height: 90.h,
          clipBehavior: Clip.antiAlias,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    AppRouter.popRouter();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.r),
                    ),
                    backgroundColor: const Color.fromRGBO(251, 245, 232, 1),
                    minimumSize: Size(176.w, 56.h),
                  ),
                  child: Text(
                    'Leave Room',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      color: const Color.fromRGBO(36, 36, 36, 1),
                    ),
                  ),
                ),

                InkWell(
                  child: SvgPicture.asset('assets/icons/muted.svg'),
                ),

                InkWell(
                  onTap: (){
                    openBottomSheet(context, const RaiseHand());
                  },
                  child: SvgPicture.asset('assets/icons/raise.svg'),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 39.h),
          child: ListView(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
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
                        const Spacer(),
                        const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Text(
                      'The importance of User Experience design in today\'s digital age',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: const Color.fromRGBO(36, 36, 36, 1),
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
                            color: const Color.fromRGBO(239, 242, 248, 1),
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
                                  color: const Color.fromRGBO(36, 36, 36, 1),
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
                            color: const Color.fromRGBO(239, 242, 248, 1),
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
                                  color: const Color.fromRGBO(36, 36, 36, 1),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const DottedLine(
                        dashColor: Color.fromRGBO(36, 36, 36, 0.5),
                        dashGapLength: 6),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: true,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Yousef',
                        host: false,
                        mic: 'mic_speaking',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Fatena',
                        host: false,
                        mic: 'mic_unmute',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Noor',
                        host: false,
                        mic: 'mic_muted',
                      ),
                      SpeakingRoomItem(
                        image: 'a1',
                        name: 'Rima',
                        host: false,
                        mic: 'mic_muted',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
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
          height: 411.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
