import 'package:flutter/material.dart';
import 'package:flutter_examples/persist/repository/todo_item.dart';
import 'package:flutter_examples/persist/repository/todo_item_repository.dart';

class TodoDetailModel extends ChangeNotifier {
  TodoDetailModel({
    required TodoItemRepository todoItemRepository,
  }) : _todoItemRepository = todoItemRepository;

  final TodoItemRepository _todoItemRepository;

  String? title;
  String? body;
  bool isDone = false;

  void setTodoItem(TodoItem? item) {
    this.title = item?.title;
    this.body = item?.body;
    this.isDone = item?.isDone == true;
  }

  Future<void> create() async {
    final String? currentTitle = this.title;
    if (currentTitle == null || currentTitle.isEmpty) {
      final Error error = ArgumentError('タイトルは必須入力です。');
      throw error;
    }

    await _todoItemRepository.insert(currentTitle, body);
    notifyListeners();
  }

  Future<void> update(TodoItem item) async {
    final String? currentTitle = this.title;
    if (currentTitle == null || currentTitle.isEmpty) {
      final Error error = ArgumentError('タイトルは必須入力です。');
      throw error;
    }

    final updated = TodoItem(
      id: item.id,
      title: currentTitle,
      body: body,
      isDone: isDone,
      createdAt: item.createdAt,
      updatedAt: DateTime.now(),
    );
    await _todoItemRepository.update(updated);
    notifyListeners();
  }
}
