import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/widget/card_data_entry_content.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
          'Account Upgrade',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w,top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Its the time, Take your account to the next level with our premium membership!',
              style: TextStyle(
                wordSpacing: 2,
                height: 1.4.h,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Learn more',
                style: TextStyle(color: Colors.orange),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Choose your plan',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Container(
                  width: 160.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                        ),
                        children: [
                          TextSpan(text: 'MONTHLY'),
                          TextSpan(
                              text: '\n8\$',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.sp)),
                          TextSpan(
                            text: '  Per Month',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 160.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(text: 'ANNUALY'),
                          TextSpan(
                            text: '\n80\$',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontSize: 24.sp),
                          ),
                          TextSpan(
                            text: '  Per Year',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Choose your plan',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Container(
                  width: 160.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center( 
                    child: Image.asset('assets/images/visa.png'),
                    // child: SvgPicture.asset('assets/icons/visa.svg',height: 40.h,width: 100.h,color: Colors.black,),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 160.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/paypal.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(325.w, 56.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r))),
              onPressed: () {
                openBottomSheet(context, CardDateEntry());

              },
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0.r),
            topRight: Radius.circular(20.0.r)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height:503.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
