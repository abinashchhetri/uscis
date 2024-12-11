import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:uscis/controller/user.dart';
import 'package:uscis/models/users_cases.dart';
import 'package:uscis/pages/case_page.dart';
import 'package:uscis/pages/page_footer.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<SearchedCase> cases =[];

  static SearchedCase? searchedCase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 50),

            // Title part of the SearchPage page
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "USCIS",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 82, 136, 1),
                      fontSize: 37,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () => {},
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

            // end of Title part of SearchPage page
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            // margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            width: MediaQuery.of(context).size.width / 1.2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: (value) async {
                      http.Response response = await User().getUser(value);

                      if (response.statusCode == 200) {
                        searchedCase = searchedCaseFromJson(response.body);
                        CasePage(searchedCase);
                        debugPrint(response.body);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please enter a valid receipt number.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Color.fromARGB(255, 20, 19, 19),
                            fontSize: 16.0);
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30),
                        filled: true,
                        fillColor: Color.fromRGBO(0, 82, 136, 1),
                        hintText: "Enter your receipt number... ",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(107, 114, 128, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromRGBO(0, 82, 136, 0.32),
                  ),
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  padding: EdgeInsets.only(left: 25, right: 25),
                  height: 370,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Please enter any code to get the details.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          pageFooter()
        ],
      ),
    );


    
  }
}
