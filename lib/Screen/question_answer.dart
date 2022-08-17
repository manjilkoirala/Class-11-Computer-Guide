// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../model/notesmodel.dart';
import '../widgets/appbar.dart';

class NotePage extends StatelessWidget {
  var custometitle;
  NotePage({Key? key, this.custometitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var func;

    if (custometitle == "Computer System") {
      func = Computer.chapter1;
    } else if (custometitle == "Number System") {
      func = Computer.chapter2;
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: MyAppBar(
        title: custometitle,
        space: 0.0,
      ),
      body: ListView.builder(
        itemCount: func.length,
        itemBuilder: (context, index) {
          return SubjectList(item: func[index]);
        },
      ),
    );
  }
}

class SubjectList extends StatelessWidget {
  const SubjectList({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Notes item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(item.question),
        children: [
          if (item.img != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(item.img),
            ),
          ListTile(
              title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              item.answer,
            ),
          ))
        ],
      ),
    );
  }
}