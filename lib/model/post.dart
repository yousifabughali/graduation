import 'package:graduation/model/user.dart';

class Post{
  String? postId;
  late String question;
  late String description;
  late String username;
  late String name;
  String? image;
  String? date;

  Post({
    this.postId,
    required this.question,
    required this.description,
    required this.name,
    required this.username,
    required this.image,
    this.date
  });

  Post.fromMap(Map<String, dynamic> map) {
    question= map['question'];
    description= map['description'];
    username=map['username'];
    name=map['name'];
    image=map['image'];
    date=map['date'];
  }

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'description': description,
      'username':username,
      'name':name,
      'image':image,
      'date':date
    };
  }
}
