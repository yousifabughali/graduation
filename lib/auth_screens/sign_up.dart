import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final provider = Provider.of<AuthProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
            left: 24.w,
            top: 72.h,
            right: 24.w,
          ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.w, bottom: 4.h),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      height: 1.5.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child:  Text(
                    'Let\'s Create your account',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 49.h,
                ),
                Form(
                  key: Provider.of<AuthProvider>(context).signUpKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 327.w,
                        child: TextFormField(
                          controller: provider.nameController,
                          validator: provider.nullValidation,
                          decoration: InputDecoration(
                            label: const Text('Name'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, width: 1.w),
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
                          controller: provider.userNameController,
                          validator: provider.nullValidation,
                          decoration: InputDecoration(
                            label: const Text('Username'),
                            prefixText: '@',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, width: 1.w),
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
                          controller: provider.emailController,
                          validator: provider.emailValidation,
                          decoration: InputDecoration(
                            label: const Text('Email'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, width: 1.w),
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
                            label: const Text('Password'),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 55.h,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await provider.signUp();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    backgroundColor: Colors.black,
                    minimumSize: Size(325.w, 56.h),
                  ),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignIn()));
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
                    'Login',
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
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 44.h,
                  ),
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
      ),
    );
  }
}
