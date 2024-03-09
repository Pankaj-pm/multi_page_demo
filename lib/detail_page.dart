import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String? name;

  const DetailPage({super.key, this.name});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  Map? pdetail;
  @override
  Widget build(BuildContext context) {
    pdetail= ModalRoute.of(context)?.settings.arguments as Map?;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Product Name ${pdetail?["name"]}",
            style: TextStyle(fontSize: 50),
          ),
          Text(
            "price ${pdetail?["price"]}",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
