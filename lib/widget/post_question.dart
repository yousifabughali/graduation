import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/widget/posted.dart';

class PublishQuesion extends StatefulWidget {
  const PublishQuesion({Key? key}) : super(key: key);

  @override
  State<PublishQuesion> createState() => _PublishQuesionState();
}

class _PublishQuesionState extends State<PublishQuesion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h,right: 20.w,left: 20.w),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: 15.h,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Ask Your Question..',
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Spacer(),
          Row(
            children: [
              // IconButton(onPressed: (){}, icon: ),
              SvgPicture.asset('assets/icons/picture.svg',height: 53.h,width: 53.w,),
              SizedBox(width: 6.w,),
              SvgPicture.asset('assets/icons/mention.svg',height: 53.h,width: 53.w,),
              SizedBox(width: 6.w,),
              SvgPicture.asset('assets/icons/attatchment.svg',height: 53.h,width: 53.w,),
              SizedBox(width: 14.w,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(150.w, 56.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r))),
                onPressed: () {
                  AppRouter.popRouter();
                  openBottomSheet(context, Posted());
                },
                child: const Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h,),


        ],
      ),
    );
  }
  openBottomSheet(BuildContext context, Widget widget)  {
    return  showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      showDragHandle: true,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (context) {
        return SizedBox(
          height: 480.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
