class Todo {
  final String title;
  final String description;
  final bool done;

  Todo({
    required this.title,
    required this.description,
    required this.done,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      description: json['description'],
      done: json['done'],
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'done': done,
      };

  static List<Todo> fakeTodos() {
    return [
      Todo(
        title: 'Buy milk',
        description: 'Go to the store and buy milk',
        done: false,
      ),
      Todo(
        title: 'Buy bread',
        description: 'Go to the store and buy bread',
        done: false,
      ),
      Todo(
        title: 'Buy eggs',
        description: 'Go to the store and buy eggs',
        done: false,
      ),
    ];
  }
}
