class TodoItem {
  TodoItem(
      {required this.id,
      required this.title,
      this.body,
      required this.isDone,
      required this.createdAt,
      required this.updatedAt});

  final int id;
  String title;
  String? body;
  bool isDone;
  final DateTime createdAt;
  DateTime updatedAt;

  factory TodoItem.fromMap(Map<String, dynamic> from) => TodoItem(
        id: from['id'] as int,
        title: from['title'] as String,
        body: from['body'] as String?,
        isDone: from['isDone'] == 1,
        createdAt: DateTime.parse(from['createdAt'] as String).toLocal(),
        updatedAt: DateTime.parse(from['updatedAt'] as String).toLocal(),
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'id': this.id,
        'title': this.title,
        'body': this.body,
        'isDone': this.isDone ? 1 : 0,
        'createdAt': this.createdAt,
        'updatedAt': this.updatedAt,
      };

  // getters
  int get getId => this.id;

  String get getTitle => this.title;

  String? get getBody => this.body;

  bool get getIsDone => this.isDone;

  DateTime get getCreatedAt => this.createdAt;

  DateTime get getUpdatedAt => this.updatedAt;

  @override
  String toString() {
    return 'TodoItem{id: $id, title: $title, isDone: $isDone, createdAt: $createdAt, updatedAt: $updatedAt}';
  }

  static const String TABLE_NAME = 'todo_item';

  static const String CREATE = '''
  CREATE TABLE todo_item(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    body TEXT,
    isDone INTEGER NOT NULL,
    createdAt TEXT NOT NULL,
    updatedAt TEXT NOT NULL
  );
  ''';
}
