import "package:flutter/material.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
      children: [
 Padding(
   padding: const EdgeInsets.all(25.0),
   child: Container(
    decoration: BoxDecoration(
      color:Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child:Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       Text("Search"),
       Icon(Icons.search)
        ],
      ),
    ),
   ),
 ),
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Text("Every one files are much more than the exist one",style:TextStyle(color:Colors.grey[600])),
  ),
  Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text("Hot Picks 🔥",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        Text("see all",style:TextStyle(color:Colors.blue))
      ]
    ),
  )
        ],
      ));
  }
}
