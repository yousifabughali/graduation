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
    final provider=context.read<FireStoreProvider>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Form(
        key: provider.addNewArticleKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
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
                controller: provider.articleNameController,
                validator: provider.requiredValidator,
                autofocus: true,
                decoration: InputDecoration(
                  label: Text('Article Name'),
                  hintText: 'Article name goes here..',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(style: BorderStyle.solid, width: 1.w),
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
                  decoration: InputDecoration(
                  label: Text('Add Photo'),
                  hintText: 'Add photo for your article',
                  suffixIcon: IconButton(icon: Icon(Icons.image),onPressed: (){
                    provider.selectImage();
                  }),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(style: BorderStyle.solid, width: 1.w),
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
                controller: provider.articleTagsController,
                validator: provider.requiredValidator,
                decoration: InputDecoration(
                  label: Text('Add Tags '),
                  hintText: 'Ex: User flow',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(
                        style: BorderStyle.solid, width: 1.w, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
