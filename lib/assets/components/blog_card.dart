import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(children: [
          Container(
              child: Row(
            children: [
              Icon(Icons.abc),
              Column(
                children: [
                  Text(
                    "Blog1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text("Body2")
                ],
              )
            ],
          )),
          Container(
            color: Colors.grey,
            height: 184,
            width: 320,
          ),
          Text("Lorem faks, asflk;d, lasdfjk, fadsljfjklds  sdfjla"),
          Container(
            child: Row(
              children: [
                Container(
                    child: Row(
                  children: [
                    GestureDetector(onTap: () => {}, child: Text("BUTTON")),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(onTap: () => {}, child: Text("BUTTON"))
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    GestureDetector(
                        onTap: () => {}, child: Icon(Icons.favorite)),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () => {}, child: Icon(Icons.notifications))
                  ],
                )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
