import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/sub_pages/full_record_page.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({Key? key}) : super(key: key);

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
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
          'Billing',
          style: TextStyle(
              color: const Color.fromRGBO(36, 36, 36, 1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 335.w,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(252, 252, 252, 1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                      ),
                      children: const [
                        TextSpan(text: 'Premium account :'),
                        TextSpan(
                          text: 'Active',
                          style: TextStyle(
                            color: Color.fromRGBO(142, 186, 67, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Next Payment on 20.04.2023 for 8\$',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                        fixedSize: Size(319.w, 56.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r))),
                    onPressed: () {},
                    child: Text(
                      'Switch To Annual',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel Subscription ',
                      style: TextStyle(
                        color: const Color.fromRGBO(249, 78, 61, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'Subscription Record',
                  style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FullRecordPage()));
                  },
                  child: Text(
                    'see more',
                    style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 0.5),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/record_table.png',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Payment Method',
              style: TextStyle(
                color: const Color.fromRGBO(36, 36, 36, 1),
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                fontFamily: 'Poppins',
              ),
            ),

            Row(
              children: [
                Image.asset('assets/images/visa2.png'),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  'Visa ending in 0578 expiring 11/2024',
                  style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/trash.svg'),
                ),
              ],
            ),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                    fixedSize: Size(319.w, 52.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r))),
                onPressed: () {},
                child: Text(
                  'Add New Credit Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
