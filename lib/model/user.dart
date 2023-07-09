class AppUser {
  late String email;
  String? id;
  String? password;
  late String userName;
  late String name;
  Set<String>? interests;
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
    final set = map['interests'] as Set<String>;
    email= map['email'];
    userName= map['userName'];
    name=map['name'];
    interests = set.map((e) => e.toString()).toSet();
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
