import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/helper/firestore_helper.dart';
import 'package:graduation/helper/storage_helper.dart';
import 'package:graduation/model/article.dart';
import 'package:graduation/model/comments.dart';
import 'package:graduation/model/post.dart';
import 'package:graduation/model/user.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FireStoreProvider extends ChangeNotifier {
  GlobalKey<FormState> addNewPostKey = GlobalKey();

  TextEditingController postNameController = TextEditingController();
  TextEditingController postDescriptionController = TextEditingController();

  GlobalKey<FormState> addNewArticleKey = GlobalKey();
  GlobalKey<FormState> addNewArticleKey2 = GlobalKey();
  TextEditingController articleNameController = TextEditingController();
  TextEditingController articleDescriptionController = TextEditingController();
  TextEditingController articleTagsController = TextEditingController();

  GlobalKey<FormState> addNewCommentKey = GlobalKey();
  TextEditingController commentController = TextEditingController();

  File? selectedImage;
  List<Article> articles = [];
  List<Post> posts = [];
  List<Comments> comments=[];


  // List<Product> products = [];

  FireStoreProvider() {
    getAllArticles();
    getAllPosts();
  }

  String? requiredValidator(String? v) {
    if (v!.isEmpty) {
      return 'This field is required';
    }
  }

  /// articles
  selectImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
    selectedImage = File(file!.path);
    notifyListeners();
  }

  Future<void> addNewArticle(String text) async {
    // if(addNewCategoryKey.currentState!.validate()){

    if (selectedImage != null) {
      String imageUrl =
          await StorageHelper.storageHelper.uploadImage(selectedImage!);
      Article article = Article(
        question: articleNameController.text,
        image: imageUrl,
        name:text,
        description: articleDescriptionController.text,
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        hashtags: articleTagsController.text,
      );
      FireStoreHelper.fireStoreHelper.addNewArticle(article);
      articles.add(article);
      notifyListeners();
      AppRouter.popRouter();
      articleNameController.text='';
      articleDescriptionController.text='';
      articleTagsController.text='';
      selectedImage=null;
    }
    // }
  }

  getAllArticles() async {
    articles = await FireStoreHelper.fireStoreHelper.getAllArticles();
    notifyListeners();
  }

  /// posts
  Future<void> addNewPosts(String name,String userName) async {

    // if(addNewCategoryKey.currentState!.validate()){
    Post post = Post(
      question: postNameController.text,
      description: postDescriptionController.text,
      name: name,
      username: userName,
      image: 'assets/icons/a1.png',
      date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
    );
    FireStoreHelper.fireStoreHelper.addNewPost(post);
    posts.add(post);
    notifyListeners();
    AppRouter.popRouter();
    postNameController.text='';
    postDescriptionController.text='';


    // }
  }

  getAllPosts() async {
    posts = await FireStoreHelper.fireStoreHelper.getAllPosts();
    notifyListeners();
  }

  ///comments
  addNewComment(String postId,String name,) async {

    if(addNewCommentKey.currentState!.validate()){
        Comments comment = Comments(
          name: name,
          answer: commentController.text,
          image: 'assets/icons/1.png',
          date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
        );
        Comments newComment =
        await FireStoreHelper.fireStoreHelper.addNewComment(comment, postId);
        comments.add(newComment);
        print(comments.toString());
        notifyListeners();
        commentController.text='';

      }
    }


  Future<void> getAllComments(String postId) async {
    comments = await FireStoreHelper.fireStoreHelper.getAllComments(postId);
    notifyListeners();
  }

// getAllProduct(String catId) async {
//   products = await  FireStoreHelper.fireStoreHelper.getAllProduct(catId);
//   notifyListeners();
// }
}
