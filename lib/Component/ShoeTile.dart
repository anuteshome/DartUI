import "package:dartui/Models/ShoesModel.dart";
import "package:flutter/material.dart";


class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      margin:  EdgeInsets.all(15),
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12)
        
      ),
      child:Column(
        children: [
          Image.asset(shoe.ImagePath,height: 200,width: 200,),
          // Disciprion
          Text(shoe.name),
         Text(shoe.Price.toString()),
         Text(shoe.Discription),
        ],
      )
    );
  }
}
