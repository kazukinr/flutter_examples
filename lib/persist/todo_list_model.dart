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
}
