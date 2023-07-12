import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FullRecordPage extends StatelessWidget {
  const FullRecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 60,
          leading: IconButton(
              icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            'Subscription Record',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: 26.h),
          child: Image.asset('assets/images/full_record_table.png'),
        ),
      ),
    );
  }
}
