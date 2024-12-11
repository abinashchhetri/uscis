import 'package:flutter/material.dart';
import 'package:uscis/pages/search_page.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
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
                  "Cases",
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
                                    Text("Body2")
                                  ],
                                )
                              ],
                            )),
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 20, left: 10, right: 10),
                          color: Colors.grey,
                          height: 230,
                          width: 320,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Lorem faks, asflk;d, lasdfjk, fadsljfjklds  sdfjla",
                            style: TextStyle(
                              color: Color.fromARGB(255, 87, 85, 85),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 25, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Container(
                                  child: Row(
                                children: [
                                  GestureDetector(
                                      
                                      onTap: () => {
                                        
                                      },
                                      child: Icon(Icons.favorite)),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                      onTap: () => {},
                                      child: Icon(Icons.notifications))
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
