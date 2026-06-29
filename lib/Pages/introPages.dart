import "package:dartui/Pages/HomePages.dart";
import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Padding(
               padding: const EdgeInsets.all(25.0),
               child: Image.asset('lib/assets/NikeLogo.png', height: 240,),
             ),
             SizedBox(height: 20,),
              Text("Just Do It",
              style: TextStyle(fontSize: 20),
              ),
          
               SizedBox(height: 20,),
              Text("This is Nike offical mobile application it's native corss platform.",
              style: TextStyle(fontSize: 15,color: Colors.grey),
              ),

              SizedBox(height: 40,),
              GestureDetector(
                onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.black,
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(25.0),
                   child: Center(child: Text('Shop Now',style:TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                    
                    ))),
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