import 'package:flutter/material.dart';
import 'package:flutter_examples/persist/repository/todo_item.dart';
import 'package:flutter_examples/persist/repository/todo_item_repository.dart';

class TodoListModel extends ChangeNotifier {
  TodoListModel({
    required TodoItemRepository todoItemRepository,
  }) : _todoItemRepository = todoItemRepository;

  final TodoItemRepository _todoItemRepository;
  List<TodoItem> list = [];

  Future<void> init() async {
    refreshTodoList();
  }

  Future<void> refreshTodoList() async {
    this.list = await _todoItemRepository.findAll();
    notifyListeners();
  }

  Future<void> updateIsDone(int id, bool isDone) async {
    await _todoItemRepository.updateIsDone(id, isDone);
    refreshTodoList();
  }

  Future<void> delete(int id) async {
    await _todoItemRepository.delete(id);
    refreshTodoList();
  }
}
