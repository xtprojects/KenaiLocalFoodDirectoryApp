import 'package:flutter/material.dart';
import '/components/entity.dart';

class RetailStores extends StatefulWidget {
  const RetailStores({super.key});

  @override
  State<RetailStores> createState() => _RetailStoresState();
}

class _RetailStoresState extends State<RetailStores> {
  List<Entity> entities = [
    Entity(
      name: 'The Goods + Sustainable Grocery',
      address: '45015 A Kalifornsky Beach Rd Soldotna',
      phoneNumber: '907-252-5977',
      email: 'mindfullivingcollective@gmail.com',
      operationHours: 'Mon-Fri 9a-6p, Sat 10a-5p',
      description: 'We source AK first, the closer to home the better. Vegetables, fruit, plants, flowers, preserves, mushrooms, honey, eggs, meat, seafood, beverages, baked goods',
    ),
    Entity(
      name: 'Cad-Re Feeds',
      address: '281 Aspen Drive, Soldotna',
      phoneNumber: '(907) 262-4698',
      operationHours: 'Mon-Sat 9a-6p',
      description: 'Vegetables, fruit, plants, flowers, honey, eggs',
    ),
    Entity(
      name: 'Wagon Wheel Garden and Pet',
      address: '1506 Ocean Drive, Homer',
      phoneNumber: '(907) 235-8777',
      email: 'www.akwagonwheel.com',
      operationHours: 'Mon-Fri 9a-6p, Sat 10a-6p',
      description: 'Vegetables, fruit, plants, flowers, honey, eggs, livestock, beverages, specialty',
    ),
    Entity(
      name: 'Kenai Feed & Supply',
      address: 'Mile 14.5 K-Beach Road, Kenai',
      phoneNumber: '(907) 283-1929',
      email: 'kenaifeed.com',
      operationHours: 'Mon-Sat 9a-6p',
      description: 'Vegetables, fruit, plants, preserves, honey, eggs, meat, livestock',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Retail Stores'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: entities.length,
              itemBuilder: (context, index) {
                final entity = entities[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entity.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        if (entity.address != null)
                          Text('Address: ${entity.address!}'),
                        if (entity.phoneNumber != null)
                          Text('Phone: ${entity.phoneNumber!}'),
                        if (entity.email != null)
                          Text('Email: ${entity.email!}'),
                        if (entity.operationHours != null)
                          Text('Hours: ${entity.operationHours!}'),
                        if (entity.description != null)
                          Text('Description: ${entity.description!}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
