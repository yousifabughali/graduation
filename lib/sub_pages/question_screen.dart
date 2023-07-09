import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/mentor/public_mentor_profile.dart';
import 'package:graduation/widget/comment_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: IconButton(
              onPressed: (){
                AppRouter.popRouter();
              },
              icon: SvgPicture.asset(
                'assets/icons/arrow_back.svg',
                height: 50.h,
                width: 50.w,
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 90.h,
          width: 395.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r),topRight: Radius.circular(40.r),),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 53.h,
                width: 273.w,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write your comment',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ),
              SvgPicture.asset('assets/icons/comment_sent.svg'),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.h, top: 10.h),
          child: ListView(
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  AppRouter.NavigateToWidget(MentorPublicProfile());
                },
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
                    Spacer(),
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
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0.w),
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
                padding: EdgeInsets.only(left: 5.w),
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
              SizedBox(
                height: 12.h,
              ),
              Text(
                '28 views. 155 likes',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/like.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.asset('assets/icons/share.svg'),
                  Spacer(),
                  Text(
                    'sun.11.11.23',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              DottedLine(dashColor: Colors.grey),
              //////////////////////////////////
              SizedBox(
                height: 15.h,
              ),
              Text(
                'see all comments',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CommentWidget(),
              SizedBox(height: 14,),
              CommentWidget(),
              SizedBox(height: 14,),
              CommentWidget(),
              SizedBox(height: 14,),
              CommentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
