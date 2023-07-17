import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/model/comments.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class CommentWidgetSheet extends StatelessWidget {
  Comments comment;

  CommentWidgetSheet({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthProvider>();
    return SizedBox(
      width: 335.w,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.name,
                      style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      comment.date,
                      style: TextStyle(
                          color: const Color.fromRGBO(36, 36, 36, 0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  comment.answer,
                  maxLines: 2,
                  style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 0.5),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    height: 1.5.h,
                    overflow: TextOverflow.ellipsis,
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
                        fontFamily: 'Poppins',
                        color: const Color.fromRGBO(142, 142, 149, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    const Spacer(),
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
