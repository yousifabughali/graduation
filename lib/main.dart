import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/firebase_options.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/splashScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'helper/internet_connectivity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Map _source = {ConnectivityResult.none: false};
  final NetworkConnectivity _networkConnectivity = NetworkConnectivity.instance;
  String string = '';

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (context)=>AuthProvider()),
        ChangeNotifierProvider<FireStoreProvider>(create: (context)=>FireStoreProvider()),
      ],
      builder: (context,child) {
        return ScreenUtilInit(
            designSize: const Size(375, 812),
            builder: (context, child) {
              return  StreamBuilder(
                builder: (context, snapshot) {
                  return MaterialApp(
                    navigatorKey: AppRouter.navKey,
                    home: SplashScreen(),
                  );
                }
              );
            });
      }
    );
  }
}


