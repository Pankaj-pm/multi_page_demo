import 'package:flutter/material.dart';
import 'package:multi_page_demo/detail_page.dart';
import 'package:multi_page_demo/util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: product1.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "detail_p",arguments: e);
                },
                child: MyProductView(e: e),
              );
            }).toList(),
          ),
          Row(
            children: product2.map((e) {
              return MyProductView(e: e);
            }).toList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (context) {
          //     return DetailPage(
          //       name: "Flutter",
          //     );
          //   },
          // ));

          // Navigator.pushNamed(context, "detail_p",arguments: 2);
          //Map map={};
          Navigator.pushNamed(context, "detail_p", arguments: ["flutter", 5]);
        },
      ),
    );
  }
}

class MyProductView extends StatelessWidget {
  final Map e;

  const MyProductView({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      height: 200,
      width: 130,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(
            e["img"],
            height: 130,
            width: 160,
          ),
          Text(e["name"]),
          Text("${e["price"]}"),
        ],
      ),
    );
  }
}
