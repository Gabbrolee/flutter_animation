import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _list = [];

  void _setItem() {
    setState(() {
      _list.insert(0, 'New Item${_list.length}');
      _listKey.currentState?.insertItem(0);
    });
  }

  void _removeItem(int index) {
    setState(() {
      String removedItem = _list[index];
      _list.removeAt(index);
      _listKey.currentState?.removeItem(
          index,
          duration: const Duration(milliseconds: 500),
          (context, animation) => ListTile(
                title: Text(removedItem),
                textColor: Colors.red,
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List Example"),
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: (BuildContext context, int index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text(_list[index]),
              trailing: IconButton(
                onPressed: () => _removeItem(index),
                icon: const Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
