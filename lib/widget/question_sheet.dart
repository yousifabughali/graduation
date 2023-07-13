import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/auth_screens/sign_in.dart';
import 'package:graduation/model/post.dart';
import 'package:graduation/model/user.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/sub_pages/question_screen.dart';
import 'package:graduation/widget/comment_widget.dart';
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
    final provider = context.read<FireStoreProvider>();
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
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    widget.post.username,
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
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0.w),
            child: Text(
              widget.post.question,
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
            child: SizedBox(
              width: 325.w,
              height: 57.h,
              child: Text(
                widget.post.description,
                maxLines: 3,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.2,
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
                widget.post.date!,
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
          provider.comments.length == 0
              ? Spacer()
              : CommentWidget(comment: provider.comments[0]),

          SizedBox(
            height: 32.5,
          ),
          ElevatedButton(
            onPressed: () async {
              await provider.getAllComments(widget.post.postId!);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return QuestionScreen(
                    postId: widget.post.postId!, post: widget.post);
              }));
            },
            child: Text(
              'See Full Post',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: BorderSide(color: Colors.black)),
              backgroundColor: Colors.white,
              minimumSize: Size(325.w, 56.h),
            ),
          ),
        ],
      ),
    );
  }
}
