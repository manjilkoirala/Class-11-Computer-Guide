// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:class11computer/Screen/question_answer.dart';
import 'package:class11computer/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      appBar: MyAppBar(title: "Class 11 Computer Guid", action: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.star),
            ),
            Icon(Icons.share)
          ],
        )
      ]),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          CustomListTile(
            title: '1. Computer system',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Computer System',
                          )));
            },
          ),
          CustomListTile(
            title: '2. Number system and conversion Boolean Logic',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Number System',
                          )));
            },
          ),
          CustomListTile(
            title: '3. Computer software and operating system.	',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Computer Software',
                          )));
            },
          ),
          CustomListTile(
            title: '4. Application Package (Word, Excel, Powerpoint)',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Application Package',
                          )));
            },
          ),
          CustomListTile(
            title: '5. Programming concepts and logics (C-language)',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Programming Concepts',
                          )));
            },
          ),
          CustomListTile(
            title: '6. Web Technology-I (HTML + CSS)',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Web Technology',
                          )));
            },
          ),
          CustomListTile(
            title: '7. Multimedia',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Multimedia',
                          )));
            },
          ),
          CustomListTile(
            title: '8. Information security and cyber law',
            follow: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotePage(
                            custometitle: 'Information Security',
                          )));
            },
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final title;
  final follow;

  const CustomListTile({Key? key, this.title, this.follow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Card(
        child: ListTile(
          onTap: follow,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
