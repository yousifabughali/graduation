import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/error_state/connectivity.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isDeviceConnected=false;

  @override
  void initState()  {
    connect();

  }
   connect() async {
      isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if(isDeviceConnected){
        context.read<FireStoreProvider>();
        navigationFun(context);
      }else{
        AppRouter.NavigateWithReplacemtnToWidget(CheckConnectivity());
      }
  }

  navigationFun(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Provider.of<AuthProvider>(context, listen: false).checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 306.h,right: 58.w,left: 85.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset('assets/icons/logo.svg',height: 115.h,width: 99.w,)),
              SizedBox(height: 16.h,),
              Text(
                'CODNET',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.sp,
                    fontFamily: 'Poppins',
                    height: 1.5,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 299.h),
                child: Text(
                  'Tech Together, Community Powered!',
                  style: TextStyle(
                    color: const Color.fromRGBO(142, 142, 149, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
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
