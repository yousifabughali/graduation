import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/list_tile_widget.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.w, top: 30.h),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bio',
            style: TextStyle(
              color: Color.fromRGBO(242, 179, 37, 1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 4.h,),
          Padding(
            padding:  EdgeInsets.only(left: 2.w,right: 19.w,),
            child: Container(
              width: 335.w,
              child: Text(
                'Experienced UX mentor with a passion for helping designers and product teams create user-centered solutions, Experienced in user research, wireframing, prototyping, and testing to deliver exceptional user experiences, Collaborative team player with strong communication skills and a keen eye for detail, Constantly seeking to learn and stay up-to-date with the latest UX trends and technologies.',
                style: TextStyle(
                  color: Color.fromRGBO(36, 36, 36, 1),
                  fontSize: 12.sp,
                  height: 1.5.h,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            width: 336.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personal info',
                  style: TextStyle(
                    color: Color.fromRGBO(242, 179, 37, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 10.h,),
                ListTileWidget(title: 'Email',icon: 'email',data: 'Ahmadali@gmail.com'),
                ListTileWidget(title: 'Phone number',icon: 'phone',data: '+9756254727'),
                ListTileWidget(title: 'Job Tittle',icon: 'job',data: 'Product Designer'),
                ListTileWidget(title: 'Level',icon: 'level',data: 'Senior'),
                ListTileWidget(title: 'Location',icon: 'location',data: 'Gaza, Palestine'),
                ListTileWidget(title: 'Personal website',icon: 'link',data: 'www.Ahmedali.com'),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Text(
            'Portfolio',
            style: TextStyle(
              color: Color.fromRGBO(242, 179, 37, 1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 9.h,),
          Row(
            children: [
              SizedBox(width: 3.w,),
              Container(
                height: 53.h,
                width: 53.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/prot1.png'),
              ),
              SizedBox(width: 16.w,),
              Container(
                height: 53.h,
                width: 53.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/prot2.png'),
              ),
              SizedBox(width: 16.w,),

              Container(
                height: 53.h,
                width: 53.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/prot3.png'),
              ),
              SizedBox(width: 16.w,),

              Container(
                height: 53.h,
                width: 53.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 248, 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/prot4.png'),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
