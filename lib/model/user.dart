class AppUser {
  late String email;
  String? id;
  String? password;
  late String userName;
  late String name;
  List<String>? interests;
  String? level;

  AppUser({
    this.id,
    required this.email,
    this.password,
    required this.userName,
    required this.name,
    this.interests,
    this.level
  });

  AppUser.fromMap(Map<String, dynamic> map) {
    final list = map['interests'] as List;
    email= map['email'];
    userName= map['userName'];
    name=map['name'];
    interests = list.map((e) => e.toString()).toList();
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
