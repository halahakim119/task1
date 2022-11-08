import 'package:flutter/material.dart';



class ApplicationToolbar extends StatelessWidget with PreferredSizeWidget{
  Icon? iconLeading;
  List<Widget>? actionsApp;

  ApplicationToolbar({this.iconLeading,this.actionsApp});
  @override
  Widget build(BuildContext context) {
    return AppBar( backgroundColor: Colors.transparent,
          elevation: 0,
          leading: iconLeading,
          title: const Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
          actions: actionsApp,);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
