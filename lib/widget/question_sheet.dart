import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/model/post.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/sub_pages/question_screen.dart';
import 'package:graduation/widget/comment_widget.dart';
import 'package:graduation/widget/comment_widget_for_sheet.dart';
import 'package:provider/provider.dart';

class QuestionSheet extends StatefulWidget {
  Post post;

  QuestionSheet({required this.post, Key? key}) : super(key: key);

  @override
  State<QuestionSheet> createState() => _QuestionSheetState();
}

class _QuestionSheetState extends State<QuestionSheet> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FireStoreProvider>(
      builder: (context,fireStoreProvider,child) {
        return Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.h, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                        widget.post.name,
                        style: TextStyle(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        widget.post.username,
                        style: TextStyle(
                            color: const Color.fromRGBO(36, 36, 36, 0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                        fixedSize: Size(80.w, 32.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r))),
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0.w),
                child: Text(
                  widget.post.question,
                  style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: SizedBox(
                  width: 325.w,
                  child: Text(
                    widget.post.description,
                    maxLines: 3,
                    style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      height: 1.5,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                '28 views. 155 likes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: const Color.fromRGBO(142, 142, 149, 1),
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
                  const Spacer(),
                  Text(
                    widget.post.date!,
                    style: TextStyle(
                      color: const Color.fromRGBO(142, 142, 149, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              const DottedLine(
                dashColor: Color.fromRGBO(36, 36, 36, 0.5),
                dashGapLength: 6,
              ),
              //////////////////////////////////
              SizedBox(
                height: 10.h,
              ),
              Text(
                'see all comments',
                style: TextStyle(
                  color: const Color.fromRGBO(142, 142, 149, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              fireStoreProvider.comments.length == 0
                  ?  Container()
                  : CommentWidgetSheet(comment: fireStoreProvider.comments[0]),

              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 39.h),
                child: ElevatedButton(
                  onPressed: () async {
                    await fireStoreProvider.getAllComments(widget.post.postId!);
                    AppRouter.NavigateToWidget(
                      QuestionScreen(postId: widget.post.postId!, post: widget.post),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(
                          color: const Color.fromRGBO(36, 36, 36, 1), width: 0.6.w),
                    ),
                    backgroundColor: Colors.white,
                    minimumSize: Size(325.w, 56.h),
                  ),
                  child: Text(
                    'See Full Post',
                    style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
