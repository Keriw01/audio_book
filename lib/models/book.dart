class Book {
  final String title;
  final String author;
  final String simpleThumb;

  Book({
    required this.title,
    required this.author,
    required this.simpleThumb,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] as String,
      author: json['author'] as String,
      simpleThumb: json['simple_thumb'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'author': author,
        'simple_thumb': simpleThumb,
      };
}
