import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/auth_screens/request_reset.dart';
import 'package:graduation/auth_screens/sign_up.dart';
import 'package:graduation/home_screens/home_screen.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context,listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 116.h, left: 22.w, right: 266.w, bottom: 9.h),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 141.w, bottom: 54.h),
            child: const Text(
              'Login To Your CODNET account',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 62),
              child: Column(
                children: [
                  SizedBox(
                    height: 53.h,
                    width: 327.w,
                    child: TextFormField(
                      controller: provider.emailController,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide:
                              BorderSide(style: BorderStyle.solid, width: 1.w),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 53.h,
                    width: 327.w,
                    child: TextFormField(
                      controller: provider.passwordController,
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
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Checkbox(
                          value: true,
                          onChanged: (_) {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                        width: 15.w,
                        height: 15.w,
                      ),
                      SizedBox(
                        width: 6.51.w,
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestReset()));
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async{
              print('ffff');
             await provider.signIn();


            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r)),
              backgroundColor: Colors.black,
              minimumSize: Size(325.w, 56.h),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

            },
            child: Text(
              'Create Account',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: BorderSide(color: Colors.black)),
              backgroundColor: Colors.white,
              minimumSize: Size(325.w, 56.h),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Flexible(
                  child: Divider(
                thickness: 0.5,
                indent: 30,
                endIndent: 10,
                color: Colors.grey,
              )),
              Text(
                'or',
                style: TextStyle(color: Colors.grey),
              ),
              Flexible(
                child: Divider(
                  thickness: 0.5,
                  indent: 10,
                  endIndent: 30,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 44.h, left: 25.w, right: 25.w),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: Colors.black)),
                backgroundColor: Colors.white,
                minimumSize: Size(325.w, 44.h),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.asset('assets/images/google.png'),
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Continue with google',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
