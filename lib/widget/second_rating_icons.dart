import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondRatingIcons extends StatefulWidget {
  String title,icon;
  SecondRatingIcons({
    required this.title,required this.icon,
    super.key,
  });

  @override
  State<SecondRatingIcons> createState() => _SecondRatingIconsState();
}

class _SecondRatingIconsState extends State<SecondRatingIcons> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: 58.w,
      decoration: BoxDecoration(
        color: x? Colors.white: Color.fromRGBO(244, 244, 244, 1),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: x?Color.fromRGBO(242, 179, 37, 1):Colors.transparent),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/icons/${widget.title}.svg'),
          Text(
            widget.icon,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
