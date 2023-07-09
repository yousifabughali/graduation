import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/home_screens/home_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(left: 20.w,top: 68.h,right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 4.w,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },icon: Icon(Icons.arrow_back),color: Colors.black,),
                Spacer(),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },icon: Icon(Icons.close),color: Colors.black,),
              ],
            ),
            SizedBox(height: 24.h,),
            Text('Change Your Password',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),
            SizedBox(height: 16.h,),
            Padding(
              padding:  EdgeInsets.only(right: 29.w),
              child: Text('Time to reset your password, remember don’t forget to write it to notes',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500,),),

            ),
            SizedBox(
              height: 56.h,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 4.0.w,right: 4.w),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Password'),
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
            SizedBox(
              height: 93.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: Colors.black)),
                backgroundColor: Colors.black,
                minimumSize: Size(325.w, 56.h),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
