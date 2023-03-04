import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        leading: const Icon(Icons.home),
        title: const Center(child: Text("Tugas 4 Flutter")),
        actions: const <Widget>[Icon(Icons.search)],
      ),
      body: Column(
        children: <Widget>[
          const Image(
              image: NetworkImage(
                  "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
          const SizedBox(height: 30),
          Row(
            children: const <Widget>[
              Expanded(child: PictureOne()),
              Expanded(child: PictureTwo())
            ],
          ),
          Text(
            "View Image Mountain",
            style: TextStyle(color: Colors.red[400], fontSize: 28.0, height: 3),
          )
        ],
      ),
    );
  }
}

// StatelessWidget class example (start)
class PictureOne extends StatelessWidget {
  const PictureOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(
          children: const <Widget>[
            Padding(padding: EdgeInsets.all(12.0)),
            Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
            Padding(padding: EdgeInsets.all(12.0)),
            Text(
              "gambar 1",
              style: TextStyle(fontSize: 24),
            )
          ],
        ));
  }
}

class PictureTwo extends StatelessWidget {
  const PictureTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(
          children: const <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),
            Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
            Padding(padding: EdgeInsets.all(10.0)),
            Text("gambar 2",
                style: TextStyle(fontSize: 24.0, color: Colors.red))
          ],
        ));
  }
}
// StatelessWidget class example (end)

