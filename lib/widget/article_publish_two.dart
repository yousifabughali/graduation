import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/app_router/router.dart';

class ArticlePublish2 extends StatefulWidget {
  const ArticlePublish2({Key? key}) : super(key: key);

  @override
  State<ArticlePublish2> createState() => _ArticlePublish2State();
}

class _ArticlePublish2State extends State<ArticlePublish2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(72.w, 32.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r))),
            onPressed: () {
              AppRouter.popRouter();
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Start typing...',
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),

        ],
      ),
    );
  }
}
