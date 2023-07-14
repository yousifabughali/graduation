import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsButtons extends StatefulWidget {
  String icon;
  String title;
  Function callFunction;

  SettingsButtons({
    required this.icon,
    required this.title,
    required this.callFunction,
    super.key,
  });

  @override
  State<SettingsButtons> createState() => _SettingsButtonsState();
}

class _SettingsButtonsState extends State<SettingsButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: SvgPicture.asset('assets/icons/${widget.icon}'),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: Color.fromRGBO(36, 36, 36, 1),
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              fontFamily: 'Poppins',
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 17,
          )
        ],
      ),
      onPressed: () {
        widget.callFunction();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}
