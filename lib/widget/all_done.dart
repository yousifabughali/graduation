import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllDone extends StatelessWidget {
  const AllDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 41.h,left:42.w,right: 43.w,bottom: 14.h),
          child: Image.asset('assets/images/done.png'),
        ),
        Text('You\'re all done!',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),),
        SizedBox(height: 3.h,),
        Text('Creating your personalised feed..',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),),
      ],
    );
  }
}
