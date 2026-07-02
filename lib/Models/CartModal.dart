import "package:dartui/Models/ShoesModel.dart";


class Cart extends ChangeNotifier {

  List<Shoe> ShopShoe = [
    Shoe(
      name: "Running Shoe",
      Price: "120",
      Discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ImagePath: "lib/Assets/Images/shoes3.png",
    ),
    Shoe(
      name: "Waking Shoe",
      Price: "150",
      Discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ImagePath: "lib/Assets/Images/shors4.png",
    ),
    Shoe(
      name: "Sport Shoe",
      Price: "300",
      Discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ImagePath: "lib/Assets/Images/shoes5.png",
    ),
    Shoe(
      name: "Coding Shoe",
      Price: "100",
      Discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ImagePath: "lib/Assets/Images/shoes2.png",
    ),
  ];
  List<Shoe> UserCart = [];

  List<Shoe> getUserCart() {
    return UserCart;
  }

  List<Shoe> getShopShoe() {
    return ShopShoe;
  }

  void AddShoe(Shoe shoe) {
    UserCart.add(shoe);
    notifyListeners();
  }

  void RemoveShoe(Shoe shoe) {
    UserCart.remove(shoe);
    notifyListeners();
  }
}
