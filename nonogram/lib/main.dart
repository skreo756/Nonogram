import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:'Nonogram',
  home: HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(103, 128, 159, 1) ,
        title: Text('Nonogram') ,
      ),
      body:Container(
        child:Products(),
      )
    );
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  final listItem = [];

  @override
  Widget build(BuildContext context) {
    for(int i=0;i<100;++i){
      listItem.add({
        "name": "1",
        "pic":"images/edit.png",
        "price":70
      });
    }
    return GridView.builder(
      itemCount: listItem.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
        itemBuilder: (BuildContext context, int index){
        return Product(
          productName: listItem[index]['name'],
          productPic: listItem[index]['pic'],
          productPrice: listItem[index]['price']
        );
        });
  }
}

class Product extends StatelessWidget {
  final productName;
  final productPic;
  final productPrice;

  Product ({this.productName,this.productPic,this.productPrice});
  @override
  Widget build(BuildContext context) {
    return CellBox(
      left: 4.0,
      top: 4.0,
      size: 4.0,
      color: Colors.blue[50],
      text: Text("salut"),
    );
  }
}


class CellBox extends StatelessWidget {
  final double left;
  final double top;
  final double size;
  final Color color;
  final Text text;
  CellBox({this.left, this.top, this.size, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Center(
            child: text,
          )),
    );
  }
}

