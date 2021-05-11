import 'package:flutter/material.dart';
import 'package:flutter_examples/persist/repository/todo_item.dart';
import 'package:flutter_examples/persist/repository/todo_item_repository.dart';
import 'package:flutter_examples/persist/todo_detail_model.dart';
import 'package:provider/provider.dart';

class TodoDetailPage extends StatelessWidget {
  const TodoDetailPage({this.todoItem});

  final TodoItem? todoItem;

  @override
  Widget build(BuildContext context) {
    final isUpdate = todoItem != null;
    final _titleEditingController = TextEditingController();
    final _bodyEditingController = TextEditingController();

    _titleEditingController.text = todoItem?.title ?? '';
    _bodyEditingController.text = todoItem?.body ?? '';

    return ChangeNotifierProvider<TodoDetailModel>(
      create: (_) => TodoDetailModel(todoItemRepository: TodoItemRepository()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(isUpdate ? 'TODO更新' : 'TODO追加'),
        ),
        body: Consumer<TodoDetailModel>(
          builder: (context, model, child) {
            return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'タイトル',
                        hintText: 'やること',
                      ),
                      onChanged: (title) {
                        model.title = title;
                      },
                      controller: _titleEditingController,
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '詳細',
                        hintText: 'やること詳細',
                      ),
                      onChanged: (body) {
                        model.body = body;
                      },
                      controller: _bodyEditingController,
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      child: Text(isUpdate ? '更新する' : '追加する'),
                      onPressed: () async {
                        try {
                          //TODO currently adding only.
                          if (todoItem == null) {
                            await model.create();
                          } else {
                            await model.update(todoItem!);
                          }
                          Navigator.pop(context);
                        } catch (e) {
                          await showDialog<AlertDialog>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(e.toString()),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        }
                      },
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }
}
