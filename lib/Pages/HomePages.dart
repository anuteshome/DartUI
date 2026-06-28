import "package:flutter/material.dart";


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My Title"),
        leading: Icon(Icons.edit),
      ),
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top:30,left:20),
           child: Text("Homepage"),
         ),
       ],
     )
    );
  }
}