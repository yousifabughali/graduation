class Article {
  late String question;
  String? id;
  late String description;
  late String image;
  String? hashtags;
  String? name;
  // Set<String>? hashtags;
  String? date;

  Article({
    this.id,
    required this.question,
    required this.description,
    required this.image,
    this.hashtags,
    required this.name,
    this.date
  });

  Article.fromMap(Map<String, dynamic> map) {
    // final set = map['hashtags'] as Set<String>;
    question= map['question'];
    description= map['description'];
    image=map['image'];
    hashtags=map['hashtags'];
    name=map['name'];

    // hashtags = set.map((e) => e.toString()).toSet();
    date=map['date'];
  }

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'description': description,
      'image':image,
      'hashtags':hashtags,
      'name':name,
      'date':date
    };
  }
}
