// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:special_counter/providers/color_provider.dart';
import 'package:special_counter/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color newColor = Colors.grey;
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador v2.0"),
        ),
        body: Consumer<CounterProvider>(builder: (context, counter, child) {
          return ListView(
            children: [
              Container(
                child: Center(
                  child: Text(
                    '${counter.count}',
                    style: TextStyle(fontSize: 72),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.70,
                margin: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: counter.color,
                  borderRadius: BorderRadius.circular(15.0),
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
                    onPressed: () {
                      // print(counter.blackColor());
                      counter.blackColor();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Cambiando a color negro'),
                        backgroundColor: counter.color,
                      ));
                    },
                  ),
                  MaterialButton(
                    child: Text(
                      "RED",
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      counter.redColor();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Cambiando a color rojo'),
                        backgroundColor: counter.color,
                      ));
                    },
                  ),
                  MaterialButton(
                    child: Text(
                      "BLUE",
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      counter.blueColor();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Cambiando a color azul'),
                        backgroundColor: counter.color,
                      ));
                    },
                  ),
                  MaterialButton(
                    child: Text(
                      "GREEN",
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      counter.greenColor();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Cambiando a color verde'),
                        backgroundColor: counter.color,
                      ));
                    },
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
                      onPressed: () {
                        print('suma');
                        context.read<CounterProvider>().increment();
                      },
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    minRadius: 20,
                    child: IconButton(
                      tooltip: "Restar 1 cuenta",
                      icon: Icon(Icons.remove),
                      color: Colors.grey[200],
                      onPressed: () {
                        print('resta');
                        context.read<CounterProvider>().decrement();
                      },
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    minRadius: 20,
                    child: IconButton(
                      tooltip: "Reiniciar cuenta",
                      icon: Icon(Icons.restart_alt),
                      color: Colors.grey[200],
                      onPressed: () {
                        context.read<CounterProvider>().reset();
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        }));
  }
}
