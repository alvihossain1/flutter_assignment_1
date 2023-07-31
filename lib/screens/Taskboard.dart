import 'package:flutter/material.dart';

class Taskboard extends StatefulWidget {
  const Taskboard({super.key});

  @override
  State<Taskboard> createState() => _TaskboardState();
}

class _TaskboardState extends State<Taskboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 8,
        shadowColor: Colors.black54,
        title: Text("Task Board", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.only(top: 15, right: 15, bottom: 5, left: 15),
              color: Color(0xfff5f8fb),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Task One", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  Text("Your personal task management and planning solution for planning your day, week & months" , style: TextStyle(fontSize: 13)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("12:55 pm 25th May, 2023", style: TextStyle(color: Colors.black45),),
                    ),
                  )
                ],
              )
          );
        },)
      ),
      floatingActionButton: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.black87),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(CircleBorder()),
          padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
          elevation: MaterialStatePropertyAll(12),
          shadowColor: MaterialStatePropertyAll(Colors.black)
        ),
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
