class Collection {
  final String href;
  final String title;

  Collection({
    required this.href,
    required this.title,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json['href'] as String,
        title: json['title'] as String,
      );
}
