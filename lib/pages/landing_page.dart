// This is the landing page of the application
import 'package:flutter/material.dart';
import 'package:uscis/pages/search_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 82, 136, 1),
      body: Center(
        // this container contains the test  for the landing page
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(0, 82, 136, 1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "USCIS Tracker",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Track your Cases",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  )),

              // this widget contains the button which will redirect to home page
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 160),
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: Material(
                    borderRadius: BorderRadius.circular(3),
                    elevation: 5.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: const Center(
                        child: Text(
                          "LET'S GET STARTED",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 82, 136, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
