import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/auth_screens/last_Screen.dart';
import 'package:graduation/auth_screens/sign_in.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final provider =   Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 116.h, left: 25.w, right: 231.w, bottom: 4.h),
            child: const Text(
              'Signup',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 170.w, bottom: 49.h),
            child: const Text(
              'Let\'s Create your account',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 53.h,
                    width: 327.w,
                    child: TextFormField(
                      controller: provider.nameController,
                      decoration: InputDecoration(
                        label: Text('Name'),
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
                      controller: provider.userNameController,
                      validator: provider.passwordValidation,
                      decoration: InputDecoration(
                        label: Text('Username'),
                        prefixText: '@',
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          ElevatedButton(
            onPressed: () async{
             await provider.signUp();
            },
            child: Text(
              'Sign Up',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

            },
            child: Text(
              'Login',
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
