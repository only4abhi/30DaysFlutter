import 'package:codepur/widgets/drawer.dart';
import 'package:codepur/widgets/item_wisgets.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';


class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Codepur";
  var myName = "Abhishek";
  final pi = 3.14;

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
                  return ItemWidget(   key: null,item: dummyList[index]);
              },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
