import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:graduation/widget/article_publish_two.dart';
import 'package:provider/provider.dart';

class ArticlePublish extends StatefulWidget {
  const ArticlePublish({Key? key}) : super(key: key);

  @override
  State<ArticlePublish> createState() => _ArticlePublishState();
}

class _ArticlePublishState extends State<ArticlePublish> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FireStoreProvider>(
      builder: (context,fireStoreProvider,child) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Form(
            key: fireStoreProvider.addNewArticleKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(72.w, 32.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r))),
                    onPressed: () {
                      AppRouter.popRouter();
                      openBottomSheet(context, ArticlePublish2());
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Add Photo For Your Article',
                  style: TextStyle(
                      color: Color.fromRGBO(36, 36, 36, 0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    fireStoreProvider.selectImage();
                  },
                  child: fireStoreProvider.selectedImage == null
                      ? Container(
                    height: 60.h,
                    width: 60.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(217, 217, 217, 0.2),
                    ),
                    child: Center(child: SvgPicture.asset('assets/icons/addPhoto.svg')),
                  ):
                  Container(
                    height: 60.h,
                    width: 60.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(217, 217, 217, 0.2),
                    ),
                    child: Image(image: FileImage(fireStoreProvider.selectedImage!,),fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 26.h,),
                SizedBox(
                  height: 53.h,
                  width: 335.w,
                  child: TextFormField(
                    controller: fireStoreProvider.articleNameController,
                    validator: fireStoreProvider.requiredValidator,
                    autofocus: true,
                    decoration: InputDecoration(
                      label: Text('Article Name'),
                      hintText: 'Article name goes here..',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide:
                            BorderSide(style: BorderStyle.solid, width: 1.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 53.h,
                  width: 335.w,
                  child: TextFormField(
                    controller: fireStoreProvider.articleTagsController,
                    validator: fireStoreProvider.requiredValidator,
                    decoration: InputDecoration(
                      label: Text('Add Tags '),
                      hintText: 'Ex: User flow',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 1.w,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: 257.h,
            width: 375.w,
            child: widget,
          ),
        );
      },
    );
  }
}
