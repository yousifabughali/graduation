import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/home_screens/home_screen.dart';

class Posted extends StatelessWidget {
  const Posted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding:
                EdgeInsets.only( left: 87.w, right: 88.w,),
            child: SvgPicture.asset('assets/icons/posted.svg'),
          ),
          Text(
            'Question Posted !',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(36, 36, 36, 1),
              fontFamily: 'Poppins'
            ),
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    backgroundColor:Color.fromRGBO(36, 36, 36, 1),
                    minimumSize: Size(150.w, 56.h),
                  ),
                  child:  Text(
                    'Go To Post',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color.fromRGBO(36, 36, 36, 1), width: 0.6),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    backgroundColor: Colors.white,
                    minimumSize: Size(150.w, 56.h),
                  ),
                  child: Text(
                    'Back Home',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(36, 36, 36, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
        ],
      ),
    );
  }
}
