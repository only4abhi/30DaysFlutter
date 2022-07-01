
class CatalogModel{
  static  List<Item> items =[];
}

class Item {

  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  Map<String, dynamic> toMap({
    String Function(String key)? keyMapper,
  }) {
    keyMapper ??= (key) => key;

    return {
      keyMapper('id'): this.id,
      keyMapper('name'): this.name,
      keyMapper('desc'): this.desc,
      keyMapper('price'): this.price,
      keyMapper('color'): this.color,
      keyMapper('image'): this.image,
    };
  }

  factory Item.fromMap(
    Map<String, dynamic> map, {
    String Function(String key)? keyMapper,
  }) {
    keyMapper ??= (key) => key;

    return Item(
      id: map[keyMapper('id')] as int,
      name: map[keyMapper('name')] as String,
      desc: map[keyMapper('desc')] as String,
      price: map[keyMapper('price')] as num,
      color: map[keyMapper('color')] as String,
      image: map[keyMapper('image')] as String,
    );
  }



/*
  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id:map["id"],
      name:map["name"],
      desc:map["desc"],
      price:map["price"],
      color:map["color"],
      image:map["image"]
    );
  }

  toMap() =>{
    id:"id",
    name:"name",
    desc:"desc",
    price:"price",
    color:"color",
    image:"image"
  };

  */


}



