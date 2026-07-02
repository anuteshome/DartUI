import "package:dartui/Models/ShoesModel.dart";
import "package:flutter/material.dart";
import "package:dartui/Models/CartModal.dart";
import "package:provider/provider.dart";

class CartTile extends StatefulWidget {
  Shoe shoe;
  CartTile({super.key, required this.shoe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Image.asset(widget.shoe.ImagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.Price.toString()),
          trailing: IconButton(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).RemoveShoe(widget.shoe);
            }, icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
