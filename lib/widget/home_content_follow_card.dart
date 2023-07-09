
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/question_sheet.dart';

class HomeFollowCard extends StatelessWidget {
  const HomeFollowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        openBottomSheet(context,QuestionSheet());
      },
      child: Container(
        height: 254.h,
        width: 335.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 9.w,
                  top: 18.h,
                  bottom: 24.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/a1.png',
                      height: 64.h,
                      width: 64.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'usermame',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Text',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.w,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(72.w, 32.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 5.0.w),
                child: Text(
                  'Question Goes Here',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left:5.w),
                child: Text(
                  '''Lorem ipsum dolor sit amet, consectetur \nadipisicing elit, sed do eiusmod tempor \nincididunt et dolore''',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ),
              SizedBox(height: 22.h,),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/like.svg'),
                  SizedBox(width: 10.w,),
                  SvgPicture.asset('assets/icons/reply.svg'),
                  SizedBox(width: 10.w,),
                  SvgPicture.asset('assets/icons/share.svg'),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 550.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }

}


