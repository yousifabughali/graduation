import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingIcons extends StatefulWidget {
  String title,icon;
   RatingIcons({
    required this.title,required this.icon,
    super.key,
  });

  @override
  State<RatingIcons> createState() => _RatingIconsState();
}

class _RatingIconsState extends State<RatingIcons> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          if(x){
            widget.icon=widget.title;
          }else{
            widget.icon= '${widget.icon}_on';
          }
          x=!x;


        });
      },
      child: Container(
        height: 68.h,
        width: 58.w,
        decoration: BoxDecoration(
          color: x? Colors.white: Color.fromRGBO(244, 244, 244, 1),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: x?Color.fromRGBO(242, 179, 37, 1):Colors.transparent),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/icons/${widget.icon}.svg'),
            Text(
              widget.title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
