import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation/helper/firestore_helper.dart';


class FireStoreProvider extends ChangeNotifier {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productQuantityController = TextEditingController();

  // File? selectedImage;
  // List<Category> categories = [];
  // List<Product> products = [];

  // FireStoreProvider() {
  //   getAllCategories();
  // }


  // getAllCategories() async {
  //   categories = await FireStoreHelper.fireStoreHelper.getAllCategories();
  //   notifyListeners();
  // }
  //
  //
  // getAllProduct(String catId) async {
  //   products = await  FireStoreHelper.fireStoreHelper.getAllProduct(catId);
  //   notifyListeners();
  // }
}
