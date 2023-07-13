import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/widget/posted.dart';
import 'package:provider/provider.dart';

class PublishQuesion extends StatefulWidget {
  const PublishQuesion({Key? key}) : super(key: key);

  @override
  State<PublishQuesion> createState() => _PublishQuesionState();
}

class _PublishQuesionState extends State<PublishQuesion> {
  @override
  Widget build(BuildContext context) {
    final provider= context.read<FireStoreProvider>();
    final provider2= context.read<AuthProvider>();
    return Padding(
      padding: EdgeInsets.only(top: 30.h,right: 20.w,left: 20.w),
      child: Form(
        key: provider.addNewPostKey,
        child: Column(
          children: [
            TextFormField(
              maxLines: 2,
              controller: provider.postNameController,
              validator: provider.requiredValidator,
              decoration: InputDecoration(
                hintText: 'Title',
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 15.h,),
            TextFormField(
              maxLines: 10,
              controller: provider.postDescriptionController,
              validator: provider.requiredValidator,
              decoration: InputDecoration(
                hintText: 'Ask Your Question..',
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
            Spacer(),
            Row(
              children: [
                // IconButton(onPressed: (){}, icon: ),
                SvgPicture.asset('assets/icons/picture.svg',height: 53.h,width: 53.w,),
                SizedBox(width: 6.w,),
                SvgPicture.asset('assets/icons/mention.svg',height: 53.h,width: 53.w,),
                SizedBox(width: 6.w,),
                SvgPicture.asset('assets/icons/attatchment.svg',height: 53.h,width: 53.w,),
                SizedBox(width: 14.w,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      fixedSize: Size(150.w, 56.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  onPressed: () async {
                    await provider.addNewPosts(provider2.nameController.text,provider2.userNameController.text);
                    openBottomSheet(context, Posted());
                  },
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: Color.fromRGBO(36, 36, 36, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h,),


          ],
        ),
      ),
    );
  }
  openBottomSheet(BuildContext context, Widget widget)  {
    return  showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      showDragHandle: true,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (context) {
        return SizedBox(
          height: 480.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
