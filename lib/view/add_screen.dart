import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.white),
            onPressed: () {
              ///TODO保存
            },
            child: Text('保存'),
          ),
        ],
        leading: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.clear),
        ),
        title: const Text('予定の追加'),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Card(
                child: ListTile(
              title: Text('data'),
            )),
          ),
        ],
      ),
    );
  }
}
