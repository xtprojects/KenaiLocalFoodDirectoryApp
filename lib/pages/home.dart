import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kenai Local Food Connection'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Image.asset(
                'assets/2024-local-food-directory.png',
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/farms');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Farms',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/foodbeverage');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Food & Beverages',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/seafood');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Seafoods',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cottage');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Cottage Enterprises',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/retailstore');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Retail Stores',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/akfoodhub');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green[900],
                  backgroundColor: Colors.grey[300],
                ),
                child: Text(
                  'Farmers Markets',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.asset(
                'assets/KLFC-Icon-removebg-preview.png',
                height: 150,
                fit: BoxFit.contain,
              ),
            ),

          ]
      ),

    );
  }
}
