import "package:dartui/Models/ShoesModel.dart";
import "package:flutter/material.dart";

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});
  void addToCartbtn(Shoe shoe) {
    print("shoe added to cart");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(shoe.ImagePath, height: 200, width: 200),
          // Disciprion
          SizedBox(height: 25),
          Text(shoe.Discription, textAlign: TextAlign.center),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$' + shoe.Price.toString(),
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: addToCartbtn,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
