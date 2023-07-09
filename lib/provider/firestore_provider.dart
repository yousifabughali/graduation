import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation/helper/firestore_helper.dart';
import 'package:graduation/model/article.dart';


class FireStoreProvider extends ChangeNotifier {
  TextEditingController articleNameController = TextEditingController();
  TextEditingController articleDescriptionController = TextEditingController();
  TextEditingController articleTagsController = TextEditingController();


  File? selectedImage;
  List<Article> articles = [];
  // List<Product> products = [];

  FireStoreProvider() {
    getAllCategories();
  }


  getAllCategories() async {
    articles = await FireStoreHelper.fireStoreHelper.getAllArticles();
    notifyListeners();
  }

  // getAllProduct(String catId) async {
  //   products = await  FireStoreHelper.fireStoreHelper.getAllProduct(catId);
  //   notifyListeners();
  // }
}
