import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/error_state/connectivity.dart';
import 'package:graduation/firebase_options.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/splashScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  late StreamSubscription result;
  late bool isDeviceConnected=false;
  @override
  void initState()   {
    checkConnectivity();
    super.initState();
    // TODO: implement initState
  }

   void checkConnectivity() async {
     result = Connectivity().onConnectivityChanged.listen((
        ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
      log(isDeviceConnected.toString());
      if(!isDeviceConnected){
        AppRouter.NavigateToWidget(CheckConnectivity());
      }
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
  result.cancel();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthProvider>(
              create: (context) => AuthProvider()),
          ChangeNotifierProvider<FireStoreProvider>(
              create: (context) => FireStoreProvider()),
        ],
        builder: (context, child) {
          return ScreenUtilInit(
              designSize: const Size(375, 812),
              // minTextAdapt: true,
              builder: (context, child) {
                      return GestureDetector(
                        onTap: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        child: MaterialApp(

                          navigatorKey: AppRouter.navKey,
                          home: SplashScreen(),
                        ),
                      );

              });
        }
    );
  }

}


