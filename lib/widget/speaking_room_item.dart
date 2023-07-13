import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/account_room_card.dart';

class SpeakingRoomItem extends StatelessWidget {
  String name;
  String image;
  bool host;
  String mic;

  SpeakingRoomItem({
    required this.name,
    required this.image,
    required this.host,
    required this.mic,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        openBottomSheet(context, AccountRoomCard());
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/icons/$image.png',
                height: 70.h,
                width: 70.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 46.w, top: 40.h),
                child: SvgPicture.asset('assets/icons/$mic.svg'),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Colors.black,
                fontFamily: 'Poppins'),
          ),
          Visibility(
            visible: host,
              child: Text(
            'Host',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Color.fromRGBO(36, 36, 36, 0.6),
                fontFamily: 'Poppins'),
          )),
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
        return SizedBox(
          height: 370.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
