import 'package:flutter/material.dart';
import 'package:flutter_examples/cast/cast_page.dart';
import 'package:flutter_examples/persist/todo_list_page.dart';
import 'package:flutter_examples/video_player/video_player_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples',
      home: MenuList(),
    );
  }
}

class MenuList extends StatelessWidget {
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) => _buildRow(context, _items[i]),
        itemCount: _items.length,
      ),
    );
  }

  Widget _buildRow(BuildContext context, _MenuItem item) => InkWell(
        child: ListTile(
          title: Text(item.label, style: _biggerFont),
        ),
        onTap: () {
          Navigator.of(context).push(_createRoute(item));
        },
      );

  Route _createRoute(_MenuItem item) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
      switch (item.label) {
        case 'persist':
          return TodoListPage();
        case 'video player':
          return VideoPlayerPage();
        case 'chrome cast':
          return CastPage();
      }
      // default
      return TodoListPage();
    }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end);
      var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    });
  }
}

class _MenuItem {
  const _MenuItem(this.label);

  final String label;
}

final _items = <_MenuItem>[
  _MenuItem('persist'),
  _MenuItem('video player'),
  _MenuItem('chrome cast'),
];
