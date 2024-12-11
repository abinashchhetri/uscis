import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscis/pages/edit_page.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditPage()))
            },
            child: Container(
              child: Row(
                children: [Icon(Icons.mode_edit_outline), Text("Edit")],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditPage()))
            },
            child: Container(
              child: Row(
                children: [Icon(CupertinoIcons.eye), Text("View")],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditPage()))
            },
            child: Container(
              child: Row(
                children: [Icon(Icons.delete_outline), Text("Delete")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
