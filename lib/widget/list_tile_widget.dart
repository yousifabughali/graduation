import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTileWidget extends StatelessWidget {
  String icon;
  String data;
  String title;

  ListTileWidget({
    required this.title,
    required this.data,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.h,
      width: 335.w,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/${icon}.svg'),
          SizedBox(
            width: 4.w,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Color.fromRGBO(36, 36, 36, 0.6)),
          ),
          Spacer(),
          Text(
            data,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color.fromRGBO(36, 36, 36, 1)),
          ),
        ],
      ),
    );
  }
}
