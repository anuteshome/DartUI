import "package:dartui/Component/Bottom_Nav_bar.dart";
import "package:dartui/Pages/CartPage.dart";
import "package:dartui/Pages/ShopPage.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void TabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages =[
 ShopPage(),

 CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => TabChange(index),
      ),
      appBar: AppBar(
        leading:Builder(
          builder: (context) {
            return IconButton(icon: Icon(Icons.menu),color: Colors.black,
            onPressed: () => {
              Scaffold.of(context).openDrawer(),
            },);
          }
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
       child:Center(
         child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top:80),
            child: Container(
             child: Image.asset('lib/assets/NikeLogo.png',color: Colors.white,)
             ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              leading: Icon(Icons.home,color:Colors.white),
              title:Text('Home',style: TextStyle(color:Colors.white))
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: ListTile(
              leading: Icon(Icons.info,color:Colors.white),
              title:Text('About',style: TextStyle(color:Colors.white),)
                     ),
           ),
          ],
         ),
       )
      ),
      body:_pages[_selectedIndex]
    );
  }
}
