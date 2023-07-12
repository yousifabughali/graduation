
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
          SizedBox(width: 4.w,),
          Text(title),
          Spacer(),
          Text(data),

        ],
      ),
    );
  }
}
