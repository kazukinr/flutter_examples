import 'package:flutter/material.dart';
import 'package:flutter_examples/persist/repository/todo_item.dart';
import 'package:flutter_examples/persist/repository/todo_item_repository.dart';
import 'package:flutter_examples/persist/todo_detail_page.dart';
import 'package:flutter_examples/persist/todo_list_model.dart';
import 'package:provider/provider.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          TodoListModel(todoItemRepository: TodoItemRepository())..init(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Persist sample [TODO LIST]'),
        ),
        body: Consumer<TodoListModel>(
          builder: (context, model, child) {
            final todoList = model.list;
            return ListView(
                children: todoList
                    .map((item) => ListTile(
                          title: RichText(
                            text: TextSpan(
                              text: item.title,
                              style: const TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ))
                    .toList());
          },
        ),
        floatingActionButton: Consumer<TodoListModel>(
          builder: (context, model, child) {
            return FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                pushWithReload(context, model);
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> pushWithReload(BuildContext context, TodoListModel model,
      {TodoItem? item}) async {
    await Navigator.push<MaterialPageRoute>(
      context,
      MaterialPageRoute(
        builder: (context) =>
            (item == null) ? const TodoDetailPage() : const TodoDetailPage(),
        fullscreenDialog: true,
      ),
    );
    await model.refreshTodoList();
  }
}
