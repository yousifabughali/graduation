
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/model/comments.dart';

class CommentWidget extends StatelessWidget {
  Comments comment;
   CommentWidget({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 107.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/a1.png',
            height: 40.h,
            width: 40.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            width: 275.w,
            height: 104.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed Ali',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    Spacer(),
                    Text(
                      comment.date,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h,),
                Text(
                  comment.answer,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '28 likes. 15 reply',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/icons/comment_like.svg'),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset('assets/icons/comment_reply.svg'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
