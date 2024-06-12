class Product {
  final int id;
  final int Strength;
  final String Image;
  final String Name;
  final String Type;
  final String Attacks;
  final String Description;

  Product(
    {required this.id,
    required this.Strength,
    required this.Image,
    required this.Name,
    required this.Type,
    required this.Attacks,
    required this.Description}
    );
}


class CartItem {
  final int id;
  final int Strength;
  //final String Image;
  final String Name;
  final String Type;
  final String Attacks;
  final String Description;

  CartItem({
    required this.id,
    required this.Strength,
    //required this.Image,
    required this.Name,
    required this.Type,
    required this.Attacks,
    required this.Description,
});



  Map<String, dynamic> toMap(){   //dynamic: pueden ser integer, string e incluso otros Maps.
    return {
      'id': id,
      'Name': Name,
      'Strength': Strength,
      //'Image': Image,
      'Type': Type,
      'Attacks': Attacks,
      'Description': Description,
    };
  }
}

