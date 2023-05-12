import 'package:flutter/material.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(55),
        child: GridView.count(
          crossAxisCount: 2, // Number of cards in each row
          crossAxisSpacing: 20.0, // Spacing between each card horizontally
          mainAxisSpacing: 20.0, // Spacing between each card vertically
          children: <Widget>[
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home, size: 40),
                      SizedBox(height: 10),
                      Text('FLATS/HOUSES'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.business, size: 40),
                      SizedBox(height: 10),
                      Text('HALLS/GODOWN'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.store, size: 40),
                      SizedBox(height: 10),
                      Text('SHOPS/OFFICES'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.landscape, size: 40),
                      SizedBox(height: 10),
                      Text('PLOTS/LANDS'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
