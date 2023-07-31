import 'package:flutter/material.dart';

import 'Taskboard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome to", style: TextStyle(fontSize: 15)),
                Text("Plan IT", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
                SizedBox(
                  height: height*0.3,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Your personal task management and panning solution", style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Taskboard(),
                      ));
                    },
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 40)),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStatePropertyAll(Colors.black87),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)))
                    ),
                    child: Text("Let's get started")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
