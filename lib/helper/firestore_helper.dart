import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduation/model/article.dart';
import 'package:graduation/model/comments.dart';
import 'package:graduation/model/post.dart';
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

  CollectionReference<Map<String, dynamic>> postssCollection =
      FirebaseFirestore.instance.collection('posts');

  /// User added to firestore and update the level and intrests
  addUsersToFireStore(AppUser appUser) async {
    await userCollection.doc(appUser.postId).set(appUser.toMap());
  }

  Future<AppUser> getUserFromFireStore(String id) async {
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await userCollection.doc(id).get();
    log(documentSnapshot.data()!.toString());
    return AppUser.fromMap(documentSnapshot.data()!);
  }

  Future<void> addIntresetsAndLevels(
      List<String> interests, String levels, String userId) async {
    await userCollection
        .doc(userId)
        .update({'interests': interests, 'level': levels});
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

  /// Article added to firestore
  Future<Article> addNewArticle(Article article) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await articlesCollection.add(article.toMap());
    article.id = documentReference.id;
    return article;
  }

  Future<List<Article>> getAllArticles() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await articlesCollection.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =
        querySnapshot.docs;
    List<Article> articles = documents.map((e) {
      Article article = Article.fromMap(e.data());
      article.id = e.id;
      return article;
    }).toList();
    return articles;
  }

  ///Article added to firestore and retired
  Future<Post> addNewPost(Post post) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await postssCollection.add(post.toMap());
    post.postId = documentReference.id;
    return post;
  }

  Future<List<Post>> getAllPosts() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await postssCollection.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =
        querySnapshot.docs;
    List<Post> posts = documents.map((e) {
      Post post = Post.fromMap(e.data());
      post.postId = e.id;
      return post;
    }).toList();
    return posts;
  }

  /// comments
  Future<Comments> addNewComment(Comments comment, String postId) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await postssCollection
            .doc(postId)
            .collection('comments')
            .add(comment.toMap());
    comment.id = documentReference.id;
    return comment;
  }

  Future<List<Comments>> getAllComments(String catId) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await postssCollection.doc(catId).collection('comments').get();
    List<Comments> comment = querySnapshot.docs.map((e) {
      Map<String, dynamic> data = e.data();
      data['id'] = e.id;
      Comments comment = Comments.fromMap(data);
      comment.id = e.id;
      return comment;
    }).toList();
    return comment;
  }

// Future<List<Article>> getAllArticles() async {
//   QuerySnapshot<Map<String, dynamic>> querySnapshot =
//       await articlesCollection.get();
//   List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =
//       querySnapshot.docs;
//   List<Article> articles = documents.map((e) {
//     Article atricle = Article.fromMap(e.data());
//     atricle.id = e.id;
//     return atricle;
//   }).toList();
//   return articles;
// }

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
