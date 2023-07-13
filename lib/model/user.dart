class AppUser {

  late String email;
  String? postId;
  String? password;
  late String userName;
  late String name;
  List<String>? interests;
  String? level;

  AppUser({
    this.postId,
    required this.email,
    this.password,
    required this.userName,
    required this.name,
    this.interests,
    this.level
  });

  AppUser.fromMap(Map<String, dynamic> map) {
    final set = map['interests'] as List;
    email= map['email'];
    userName= map['userName'];
    name=map['name'];
    interests = set.map((e) => e.toString()).toList();
    level=map['level'];
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'userName': userName,
      'name':name,
      'interests':interests,
      'level':level
    };
  }

}
