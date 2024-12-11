import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscis/pages/delete_page.dart';

import 'package:uscis/pages/edit_page.dart';
import 'package:uscis/pages/search_page.dart';
import 'package:uscis/pages/view_page.dart';

class CasePage extends StatefulWidget {
  var SearchedCase;

  CasePage(this.SearchedCase);

  @override
  State<CasePage> createState() => _CasePageState();
}

class _CasePageState extends State<CasePage> {
  String? _dropDownValue;

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
          Container(
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "Mom's Case",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text("view"),
                          value: "view",
                        ),
                        DropdownMenuItem(
                          child: Text("edit"),
                          value: "edit",
                        ),
                        DropdownMenuItem(
                          child: Text("delete"),
                          value: "delete",
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          _dropDownValue = value!;
                        });

                        if (_dropDownValue == "edit") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditPage()));
                        } else if (_dropDownValue == "view") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ViewPage()));
                        } else if (_dropDownValue == "delete") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DeletePage()));
                        }
                      },
                    ))
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
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(top: 10, right: 5, left: 30, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: const Color.fromRGBO(206, 206, 206, 1),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 97,
                height: 56,
                padding: EdgeInsets.only(top: 15, left: 15),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 82, 136, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              Text(
                "EAC9999103400",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "STATUS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Documnet Destroyed",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "MODIFIED DATE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "09-05-202 14:28:46",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "DESCRIPTION",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "On September 5,2023, we destroyed your document for your Form 1-130, Petition for Alien Relative, Receipt Number EAC9999103400, because the Post Office returned it and we did not hear from you. You must file a Form 1-130, Petition for Alien Relative, with the correct fee to obtain a new document. If you move, go to www.uscis.gov/addresschange to give us your new mailing address.",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
