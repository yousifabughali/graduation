import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/mentor/public_mentor_profile.dart';
import 'package:graduation/model/post.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/widget/comment_widget.dart';
import 'package:provider/provider.dart';

import '../model/comments.dart';

class QuestionScreen extends StatefulWidget {
  String postId;
  Post post;

  QuestionScreen({required this.postId, required this.post, Key? key})
      : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {

    return Consumer2<AuthProvider,FireStoreProvider>(
      builder: (context,authProvider,fireStoreProvider,child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 10.h),
                child: IconButton(
                  onPressed: () {
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
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),

              child: Container(
                height: 90.h,
                width: 395.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Form(
                      key: fireStoreProvider.addNewCommentKey,
                      child: SizedBox(
                        width: 273.w,
                        child: TextFormField(
                          validator: fireStoreProvider.requiredValidator,
                          controller: fireStoreProvider.commentController,
                          decoration: InputDecoration(
                            hintText: 'Write your comment',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color.fromRGBO(36, 36, 36, 0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await fireStoreProvider.addNewComment(
                          widget.postId,
                          authProvider.nameController.text,
                        );
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        currentFocus.unfocus();


                      },
                      child: SvgPicture.asset('assets/icons/comment_sent.svg'),
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.h, top: 10.h),
              child: ListView(
                shrinkWrap: true,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      AppRouter.NavigateToWidget(const MentorPublicProfile());
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
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(72.w, 32.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins'),
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
                    child: Text(
                      widget.post.description,
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
                  const DottedLine(dashColor: Colors.grey),
                  //////////////////////////////////
                  SizedBox(
                    height: 15.h,
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: fireStoreProvider.comments.length,
                    itemBuilder: (context, index) {
                      return CommentWidget(comment: fireStoreProvider.comments[index]);
                    },
                  ),

                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
