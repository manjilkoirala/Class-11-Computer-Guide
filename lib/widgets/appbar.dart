// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final action;
  var space;
  MyAppBar({Key? key, required this.title, this.action, this.space = 10.0})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: space,
      title: title,
      actions: action,
    );
  }
}
