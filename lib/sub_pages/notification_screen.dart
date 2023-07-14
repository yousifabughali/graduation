import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Notifications ',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New',
              style: TextStyle(
                color: Color.fromRGBO(242, 179, 37, 1),
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                fontFamily: 'Poppins',

              ),
            ),
            NotificationCard(str1: 'Don’t miss the new space hosting by ahmed ali today at 8:00 PM',date: 'Today, 3:54 PM',),
            SizedBox(height: 20.h,),
            Text(
              'Earlier',
              style: TextStyle(
                color: Color.fromRGBO(242, 179, 37, 1),
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                fontFamily: 'Poppins',

              ),
            ),
            NotificationCard(str1: 'New from ahmed ali : The importance of User Experience design in today\'s digital age',date: '20 March 2023',),
            SizedBox(height:  10.h,),
            NotificationCard(str1: 'Ahmed Ali reply to your question  ',date: '19 March 2023',),



          ],
        ),
      ),
    );
  }
}
