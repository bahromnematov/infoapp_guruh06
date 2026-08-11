import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailsPage extends StatefulWidget {
  String name;
  String lottie;
  String info;
  List<String> images;

  DetailsPage({
    super.key,
    required this.name,
    required this.lottie,
    required this.info,
    required this.images,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 35, color: Colors.white),
        ),
        title: Text(
          widget.name,
          style: TextStyle(
            fontSize: 34,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(height: 180, child: Lottie.asset(widget.lottie)),
          ),
          Center(
            child: Text(
              "Ma'lumoti",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.info,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 300,
            child: PageView(
              children: [
                Container(
                  child: Image.asset(widget.images[0], fit: BoxFit.cover),
                ),
                Container(
                  child: Image.asset(widget.images[1], fit: BoxFit.cover),
                ),
                Container(
                  child: Image.asset(widget.images[2], fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
