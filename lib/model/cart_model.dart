class CartModel {
  String? name, image, price;
  int? quantity;

  CartModel(
      {required this.name, this.quantity, required this.image, this.price});

  CartModel.fromJson(Map<dynamic, dynamic> map) {
    name = map['name'];
    image = map['image'];
    price = map['price'];
    quantity = map['quantity'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'quantity': quantity,
    };
  }
}
