import "package:dartui/Component/CartTile.dart";
import "package:flutter/material.dart";
import "package:dartui/Models/CartModal.dart";
import "package:dartui/Models/ShoesModel.dart";
import "package:provider/provider.dart";

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: 
      [Text("Cart Page"),
      
      Expanded(
        child:ListView.builder(
          itemCount:value.UserCart.length,
          itemBuilder:(context,index){
            Shoe indivisualShoe= value.getUserCart()[index];
            return CartTile(shoe: indivisualShoe);
          }
        )
      )
      
      ]
      
      ),
    );
  }
}
