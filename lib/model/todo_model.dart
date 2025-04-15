class TodoModel {
  int? id;
  String? title, description, priority;
  bool? completed;
  String? dueDate;

  TodoModel({
    this.id,
    this.title,
    this.description,
    this.priority,
    this.completed,
    this.dueDate,
  });
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      completed: json['completed'],
      dueDate: json['dueDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'completed': completed,
      'dueDate': dueDate,
    };
  }
}
