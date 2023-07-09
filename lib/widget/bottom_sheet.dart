import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/widget/posted.dart';

class ShowBottomSheetModal extends StatefulWidget {

  ShowBottomSheetModal({Key? key}) : super(key: key);
  @override
  State<ShowBottomSheetModal> createState() => _BottomSheetState();
}
class _BottomSheetState extends State<ShowBottomSheetModal> {
  @override
  Widget build(BuildContext context) {
    return showBottomSheet(context);
  }
  showBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 480.h,
          width: 375.w,
          child: Posted(),
        );
      },
    );
  }

}
