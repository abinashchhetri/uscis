import 'package:flutter/material.dart';
import 'package:uscis/pages/search_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 50),

            // Title part of the blog page
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "News",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 37,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()))
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ),
                )
              ],
            ),

            // end of title part
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 30, top: 40, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Container(
                            margin: EdgeInsets.only(left: 10, bottom: 20),
                            child: Row(
                              children: [
                                Icon(Icons.circle),
                                Column(
                                  children: [
                                    Text(
                                      "Blog1",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Body 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 87, 85, 85),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 25, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  GestureDetector(
                                      onTap: () => {},
                                      child: Text("BUTTON",
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 18))),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                      onTap: () => {},
                                      child: Text(
                                        "BUTTON",
                                        style: TextStyle(
                                            color: Colors.purple, fontSize: 18),
                                      ))
                                ],
                              )),
                            ],
                          ),
                        )
                      ]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
