import "package:dartui/Models/ShoesModel.dart";
import "package:flutter/material.dart";


class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 280,
      height: 300,
      decoration: BoxDecoration(
        color:Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child:Column(
        children: [
          Image.asset("lib/assets/shoes2.png",height: 200,),

        ],
      )
    );
  }
}
