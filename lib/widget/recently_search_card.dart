import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentlySearchCard extends StatelessWidget {
  String name,userName;
   RecentlySearchCard({
    required this.name,required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 335.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/a1.png',
                height: 40.h,
                width: 40.w,
              ),
              SizedBox(width: 12.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 1),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'
                    ),
                  ),
                  Text(
                    userName,
                    style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 0.5),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'
                    ),
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset('assets/icons/search_close.svg'),

            ],
          ),
        ),
        SizedBox(height: 10.h,),
        const DottedLine(dashColor: Color.fromRGBO(36, 36, 36, 0.5),dashGapLength: 6,),
      ],
    );
  }
}