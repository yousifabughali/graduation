import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/home_screens/home_screen.dart';

class AllDone extends StatefulWidget {
  const AllDone({Key? key}) : super(key: key);

  @override
  State<AllDone> createState() => _AllDoneState();
}

class _AllDoneState extends State<AllDone> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => AppRouter.NavigateWithReplacemtnToWidget(HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 41.h, left: 42.w, right: 43.w, bottom: 14.h),
              child: Image.asset('assets/images/done.png'),
            ),
            Text(
              'You\'re all done!',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(36, 36, 36, 1),
                fontFamily: 'Poppins'
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Creating your personalised feed..',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(147, 147, 147, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
