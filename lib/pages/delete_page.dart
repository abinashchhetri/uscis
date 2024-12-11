import 'package:flutter/material.dart';
import 'package:uscis/pages/search_page.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePage();
}

class _DeletePage extends State<DeletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
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
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              height: 227,
              width: 320,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 10, right: 40),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 82, 136, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, left: 20),
                        child: Column(
                          children: [
                            Text(
                              "#Number",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "Mom's Case",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 78,
                    height: 36,
                    margin: EdgeInsets.only(left: 26, top: 10),
                    padding: EdgeInsets.only(left: 12, top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      "Filter",
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 82, 136, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color.fromARGB(255, 177, 175, 175),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width / 1.2,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are you sure, you want to delete your case ?",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ), 
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "YES                              NO",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
