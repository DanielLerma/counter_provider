// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            margin: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                "0",
                style: TextStyle(fontSize: 72),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {},
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {},
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: () {},
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {},
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
