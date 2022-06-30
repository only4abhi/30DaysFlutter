import 'dart:convert';

import 'package:codepur/widgets/drawer.dart';
import 'package:codepur/widgets/item_wisgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/catalog.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;
  String name = "Codepur";
  var myName = "Abhishek";
  final pi = 3.14;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: Center(
        child: Container(
          color: Colors.white,//Background Color
          child: ListView.builder(
              itemCount:  dummyList.length,
              itemBuilder: (context,index){
                  return ItemWidget(  key: null,item: dummyList[index]);
              },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }


}


