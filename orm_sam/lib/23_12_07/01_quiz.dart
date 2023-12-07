class Book {
  String title;
  String comment;
  DateTime publishDate = DateTime.now();

  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other ) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate &&
          comment == other.comment;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode ^ comment.hashCode;

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }
}



void main() {
  Book book =
      Book(title: 'book1', comment: 'comment', publishDate: DateTime.now());
  Book book1 =
      Book(title: 'book1', comment: 'comment', publishDate: DateTime.now());
  Book book3 =
      Book(title: 'book1', comment: 'comment', publishDate: DateTime.now());
  Book book4 =
      Book(title: 'book1', comment: 'comment', publishDate: DateTime.now());
  Book book5 =
      Book(title: 'book1', comment: 'comment', publishDate: DateTime.now());
  Book book6 = book.copyWith();
  print(book == book6);

  final List<String> books = [];
  books.add('book');
  books.add('book1');
  books.add('book2');
  books.add('book3');
  books.add('book4');

  books.sort((a, b) => a.compareTo(b));
  print(book == book1);
  print(books);
}


