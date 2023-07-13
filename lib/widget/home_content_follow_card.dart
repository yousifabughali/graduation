
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/model/post.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/widget/question_sheet.dart';
import 'package:provider/provider.dart';

class HomeFollowCard extends StatelessWidget {
  Post post;
   HomeFollowCard({
     required this.post,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22.h),
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
                  right: 13.w,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      post.image!,
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
                          post.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          post.username,
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
              Padding(
                padding:  EdgeInsets.only(left: 5.0.w),
                child: Text(
                  post.question,
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
                child: SizedBox(
                  width: 295.w,
                  height: 57.h,
                  child: Text(
                    post.description,
                    maxLines: 3,
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.2,
                      overflow: TextOverflow.ellipsis,
                    ),
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


}


