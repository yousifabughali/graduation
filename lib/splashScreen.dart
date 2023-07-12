import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/auth_screens/first_page.dart';
import 'package:graduation/error_state/connectivity.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState()  {

    context.read<FireStoreProvider>();
    navigationFun(context);
  }


  navigationFun(BuildContext context) async{
    await Future.delayed(const Duration(seconds: 3));
     Provider.of<AuthProvider>(context,listen: false).checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 299.h, left: 139.w, right: 140.w, bottom: 32.h),
              child: SvgPicture.asset('assets/icons/logo.svg'),
            ),
            const Text(
              'CODNET',
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 299.h),
              child: const Text(
                'Join Our Community',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
