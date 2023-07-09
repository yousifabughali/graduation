import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/settings/billing_page.dart';
import 'package:graduation/settings/subscribe_membership.dart';
import 'package:graduation/splashScreen.dart';
import 'package:graduation/sub_pages/payment_page.dart';
import 'package:graduation/widget/settings_buttons.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Account Settings',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.orange,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SettingsButtons(icon: 'lock.svg',title: 'Password',callFunction: (){}),
        SettingsButtons(icon: 'premium.svg',title: 'Premium Membership',callFunction: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SubscripeMembership()));
        }),
        SettingsButtons(icon: 'billing.svg',title: 'Billing',callFunction: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BillingPage()));
        }),
        SettingsButtons(icon: 'notifi.svg',title: 'Notification',callFunction: (){}),
        SettingsButtons(icon: 'lang.svg',title: 'Langauge',callFunction: (){}),
        SettingsButtons(icon: 'love.svg',title: 'Interests',callFunction: (){}),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Privacy and security',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.orange,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SettingsButtons(icon: 'privacy.svg',title: 'Privacy',callFunction: (){}),
        SettingsButtons(icon: 'security.svg',title: 'Security',callFunction: (){}),
        SettingsButtons(icon: 'help.svg',title: 'Help',callFunction: (){}),
        SettingsButtons(icon: 'about.svg',title: 'About',callFunction: (){}),
        SettingsButtons(icon: 'book.svg',title: 'Terms of service',callFunction: (){}),
        Text(
          'login Setting',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.orange,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SettingsButtons(icon: 'logout.svg',title: 'Logout',callFunction: (){
          AppRouter.NavigateWithReplacemtnToWidget(SplashScreen());
        }),
        SizedBox(height: 20.h,),
        Text(
          'Deactivate my account',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.red,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}


