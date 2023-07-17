import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: 22.w,
          top: 116.h,
          right: 24.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.w,
                ),
                child: Text(
                  'Login To Your CODNET account',
                  style: TextStyle(
                    color: const Color.fromRGBO(142, 142, 149, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 54.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.h),
                child: Form(
                  key: provider.signInKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 327.w,
                        child: TextFormField(
                          controller: provider.emailController,
                          validator: provider.emailValidation,
                          decoration: InputDecoration(
                            label: Text('Email'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, width: 0.6.w),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 327.w,
                        child: TextFormField(
                          controller: provider.passwordController,
                          validator: provider.passwordValidation,
                          decoration: InputDecoration(
                            label: Text('Password'),
                            // suffix: IconButton(onPressed: (){},icon: Icon(Icons.add)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, width: 1.w),
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
                            width: 15.w,
                            height: 15.w,
                            child: Checkbox(
                              value: isChecked,
                              fillColor: MaterialStateProperty.all(Colors.blue),
                              checkColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6.51.w,
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RequestReset()));
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 62.h,
              ),
              ElevatedButton(
                onPressed: () async {
                  await provider.signIn();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: Colors.black,
                  minimumSize: Size(325.w, 56.h),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          width: 0.6.w)),
                  backgroundColor: Colors.white,
                  minimumSize: Size(325.w, 56.h),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 1),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    thickness: 0.5,
                    indent: 26,
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
                      endIndent: 26,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 68.h),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r),
                      side: BorderSide(
                        color: const Color.fromRGBO(36, 36, 36, 0.5),
                        width: 0.6.w,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    minimumSize: Size(325.w, 44.h),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 17.h,
                        width: 16.w,
                        child: SvgPicture.asset('assets/icons/google.svg'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Continue with google',
                        style: TextStyle(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
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
