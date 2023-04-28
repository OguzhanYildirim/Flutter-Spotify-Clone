class CatalogModel {
  static final items = [
    Item(
        id: 2,
        name: "Partido Partido Partidoooooooo",
        desc: "Sultanhisar",
        price: "%30",
        color: "#33505a",
        image:
            "https://cdn.dribbble.com/userupload/3158903/file/original-3f5abe8b99ff4ba4626ddf6660115182.jpg?compress=1&resize=1024x768"),
    Item(
        id: 3,
        name: "Ovido",
        desc: "Efeler",
        price: "%15",
        color: "#33505a",
        image:
            "https://cdn.dribbble.com/userupload/5831416/file/original-ca76f9b0181d2345353b6b3642743ab4.jpg?compress=1&resize=1024x768"),
    Item(
        id: 4,
        name: "Logitek",
        desc: "Nazilli",
        price: "%20",
        color: "#33505a",
        image:
            "https://cdn.dribbble.com/userupload/5640131/file/original-aa65f5130e30feceea772ae3677af5c9.png?compress=1&resize=1024x768"),
    Item(
        id: 5,
        name: "Validere",
        desc: "Çine",
        price: "%5",
        color: "#33505a",
        image:
            "https://cdn.dribbble.com/userupload/3279154/file/original-d95ded83b926de6bd359ec2d12d13ec7.png?compress=1&resize=1024x768"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
