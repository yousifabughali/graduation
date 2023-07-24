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
    final provider= context.read<FireStoreProvider>();
    return InkWell(
      onTap: () async{
        await provider.getAllComments(post.postId!);
        openBottomSheet(context,QuestionSheet(post: post));
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 22.h),
        child: Container(
          height: 254.h,
          width: 335.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 6.w,right: 13.w,left: 12.w,bottom: 13.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.w,
                    bottom: 12.h,
                    top: 12.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        post.image!,
                        height: 64.h,
                        width: 64.w,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            post.name,
                            style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                fontFamily: 'Poppins'
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            post.username,
                            style: TextStyle(
                                color: const Color.fromRGBO(36, 36, 36, 0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                            backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                            fixedSize: Size(80.w, 32.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r))),
                        onPressed: () {},
                        child:  Text(
                          'Follow',
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0.w),
                  child: SizedBox(
                    width: 295.w,
                    child: Text(
                      post.question,
                      style: TextStyle(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w,bottom: 10.h),
                  child: SizedBox(
                    width: 295.w,
                    child: Text(
                      post.description,
                      maxLines: 4,
                      style:  TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/like.svg'),
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset('assets/icons/reply.svg'),
                    SizedBox(
                      width: 10.w,
                    ),
                    SvgPicture.asset('assets/icons/share.svg'),
                  ],
                ),
              ],
            ),
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
