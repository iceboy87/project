class User {
  final String title;
  final String body;

  User({required this.title, required this.body});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      title: json['title'],
      body: json['body'],
    );
  }
}
