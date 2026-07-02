import "package:dartui/Component/ShoeTile.dart";
import "package:dartui/Models/ShoesModel.dart";
import "package:flutter/material.dart";
import "package:dartui/Models/CartModal.dart";
import "package:provider/provider.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});


  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

void addToCartBtn(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).AddShoe(shoe);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search"), Icon(Icons.search)],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Every one files are much more than the exist one",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("see all", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShopShoe()[index];
                return ShoeTile(
                  onTap:() => addToCartBtn(shoe),
                  shoe: shoe);
              },
            ),
          ),
        ],
      ),
    );
  }
}
