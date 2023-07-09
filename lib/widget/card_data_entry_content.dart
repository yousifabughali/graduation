import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/sub_pages/upgraded_succesffuly.dart';

class CardDateEntry extends StatelessWidget {
  const CardDateEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.0.h, right: 20.w, left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Credit card details'),
              Spacer(),
              SvgPicture.asset('assets/icons/close.svg'),
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            'Please be careful when entering your credit card information',
            style: TextStyle(
                wordSpacing: 2,
                height: 1.2.h,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 53.h,
            width: 336.w,
            child: TextFormField(
              decoration: InputDecoration(
                label: Text('Card Number'),
                // suffix: IconButton(onPressed: (){},icon: Icon(Icons.add)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(style: BorderStyle.solid, width: 1.w),
                ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 53.h,
            width: 336.w,
            child: TextFormField(
              decoration: InputDecoration(
                label: Text('Card Holder'),
                // suffix: IconButton(onPressed: (){},icon: Icon(Icons.add)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(style: BorderStyle.solid, width: 1.w),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                height: 53.h,
                width: 160.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Expiration'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide:
                          BorderSide(style: BorderStyle.solid, width: 1.w),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              SizedBox(
                height: 53.h,
                width: 160.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('CVV'),
                    // suffix: IconButton(onPressed: (){},icon: Icon(Icons.add)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide:
                          BorderSide(style: BorderStyle.solid, width: 1.w),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Total Amount: 8\$',
            style: TextStyle(
              wordSpacing: 2,
              height: 1.2.h,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          SizedBox(height: 30.h,),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(325.w, 56.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r))),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>UpgradedToPremium()));
              },
              child: const Text(
                'Pay and upgrade account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
