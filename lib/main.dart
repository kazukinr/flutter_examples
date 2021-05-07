import 'package:flutter/material.dart';

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
        itemBuilder: (context, i) => _buildRow(_items[i]),
        itemCount: _items.length,
      ),
    );
  }

  Widget _buildRow(_MenuItem item) => ListTile(
        title: Text(item.label, style: _biggerFont),
      );
}

class _MenuItem {
  const _MenuItem(this.label);

  final String label;
}

final _items = <_MenuItem>[
  _MenuItem('persist'),
];
