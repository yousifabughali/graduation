import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/home_screens/home_screen.dart';

class UpgradedToPremium extends StatelessWidget {
  const UpgradedToPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/jewellery.png'),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Upgrade successful!',
                style: TextStyle(
                    color: Color.fromRGBO(36, 36, 36, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'You now have access to premium\n content and features.',
                style: TextStyle(
                  color: Color.fromRGBO(36, 36, 36, 1) ,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 46.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                    backgroundColor: Color.fromRGBO(36, 36, 36, 1) ,
                    fixedSize: Size(325.w, 56.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child:  Text(
                  'Back To Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
