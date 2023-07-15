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
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    checkConnectivity();
  }
  void checkConnectivity() async{
    var result = Connectivity().checkConnectivity();
    print(result);
  }

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
              return  StreamBuilder<ConnectivityResult>(
                stream: Connectivity().onConnectivityChanged,
                builder: (context, snapshot) {
                  return GestureDetector(
                    onTap: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                    child: MaterialApp(
                      navigatorKey: AppRouter.navKey,
                      home: snapshot.data == ConnectivityResult.none ? CheckConnectivity() :
                      SplashScreen(),
                    ),
                  );
                }
              );
            });
      }
    );
  }

}


