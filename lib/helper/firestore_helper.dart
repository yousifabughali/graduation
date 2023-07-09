
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduation/model/article.dart';
import 'package:graduation/model/user.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static FireStoreHelper fireStoreHelper = FireStoreHelper._();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // final String categoryCollectionName = 'categories';

  CollectionReference<Map<String, dynamic>> userCollection =
      FirebaseFirestore.instance.collection('users');

  CollectionReference<Map<String, dynamic>> articlesCollection =
      FirebaseFirestore.instance.collection('articles');

  addUsersToFireStore(AppUser appUser) async {
    await userCollection.doc(appUser.id).set(appUser.toMap());
  }



  Future<AppUser> getUserFromFireStore(String id) async {
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await userCollection.doc(id).get();
    log(documentSnapshot.data()!.toString());
    return AppUser.fromMap(documentSnapshot.data()!);
  }



  Future<void> addIntresetsAndLevels(Set<String> interests,String levels,String userId) async {
    await userCollection.doc(userId).update({
      'interests': interests,
      'level':levels
    });
  }
/*
  addArticlesToFireStore(Article article) async {
    await articlesCollection.doc(article.id).set(article.toMap());
  }


  Future<Article> getArticleFromFireStore(String id) async {
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
    await articlesCollection.doc(id).get();
    log(documentSnapshot.data()!.toString());
    return Article.fromMap(documentSnapshot.data()!);
  }
  */



Future<List<Article>> getAllArticles() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await articlesCollection.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =
        querySnapshot.docs;
    List<Article> articles = documents.map((e) {
      Article atricle = Article.fromMap(e.data());
      atricle.id = e.id;
      return atricle;
    }).toList();
    return articles;
  }
  //
  //
  //
  // Future<List<Product>> getAllProduct(String catId) async {
  //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
  //       await categoriesCollection.doc(catId).collection('products').get();
  //   List<Product> products = querySnapshot.docs.map((e) {
  //     Map<String,dynamic> data = e.data();
  //     data['id']=e.id;
  //     Product product = Product.fromMap(data);
  //     product.id = e.id;
  //     return product;
  //   }).toList();
  //   print(products);
  //   return products;
  // }


}
