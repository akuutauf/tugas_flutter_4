import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text(
            "Happy Cafe Apps",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: Colors.pink,
            tabs: [
              Tab(
                text: "Cake",
                icon: Icon(Icons.cake_rounded),
              ),
              Tab(
                text: "Coffee",
                icon: Icon(Icons.free_breakfast_rounded),
              ),
              Tab(
                text: "Ice Cream",
                icon: Icon(Icons.icecream),
              ),
            ],
          ),
        ),
        drawer: DrawerWidget(),
        // endDrawer: DrawerWidget(),
        body: TabBarView(
          children: [
            Cake(),
            Coffee(),
            IceCream(),
          ],
        ),
      ),
    );
  }
}

final List cakes = [
  "cake",
  "cake",
  "cake",
  "cake",
  "cake",
  "cake",
  "cake",
];

final List coffees = [
  "coffee",
  "coffee",
  "coffee",
  "coffee",
  "coffee",
  "coffee",
  "coffee",
];

final List icream = [
  "icecream",
  "icecream",
  "icecream",
  "icecream",
  "icecream",
  "icecream",
  "icecream",
];

class Cake extends StatelessWidget {
  const Cake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Creamy Matcha Cake", style: TextStyle(fontSize: 14)),
              contentPadding: EdgeInsets.all(20),
              subtitle: Text('Deskripsi : Fresh Cake with Matcha Flavour'),
              leading: Container(
                child: Image.asset("assets/images/" + cakes[index] + ".jpg"),
              ),
            ),
          );
        },
        itemCount: cakes.length,
      ),
    );
  }
}

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Late Art Chocolate", style: TextStyle(fontSize: 14)),
              contentPadding: EdgeInsets.all(20),
              subtitle: Text('Deskripsi : Warm and Sweetness'),
              leading: Container(
                child: Image.asset("assets/images/" + coffees[index] + ".jpg"),
              ),
            ),
          );
        },
        itemCount: coffees.length,
      ),
    );
  }
}

class IceCream extends StatelessWidget {
  const IceCream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Strawberry Flake", style: TextStyle(fontSize: 14)),
              contentPadding: EdgeInsets.all(20),
              subtitle: Text('Deskripsi : Cold But Makes You Happy'),
              leading: Container(
                child: Image.asset("assets/images/" + icream[index] + ".jpg"),
              ),
            ),
          );
        },
        itemCount: coffees.length,
      ),
    );
  }
}
