import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Horizontal ListView',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Horizontal ListView'),
      ),
      body: new Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ShopCard(
                img: './images/woman_clothes.jpeg',
              ),
              ShopCard(
                img: './images/woman_na.jpeg',
              ),
              ShopCard(
                img: './images/woman_na1.jpeg',
              ),
              ShopCard(
                img: './images/woman_street.jpeg',
              ),
              ShopCard(
                img: './images/woman_street1.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopCard extends StatelessWidget {
  final String img;

  const ShopCard({@required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              offset: Offset(1.0, 2.0),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Image.asset(
          img,
          width: MediaQuery.of(context).size.width / 2,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
