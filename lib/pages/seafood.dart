import 'package:flutter/material.dart';
import '/components/entity.dart';

class Seafood extends StatefulWidget {
  const Seafood({super.key});

  @override
  State<Seafood> createState() => _SeafoodState();
}

class _SeafoodState extends State<Seafood> {
  List<Entity> entities = [
    Entity(
      name: 'Northcrest Inc',
      address: 'Soldotna',
      phoneNumber: '907-953-2211',
      description: 'Fresh local salmon, shrimp, and free-range pork',
    ),
    Entity(
      name: 'F/V Papa Whiskey',
      phoneNumber: '907-394-3995',
      email: 'pevanwarner@yahoo.com',
      operationHours: '7 days/week 0830-1830',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Seafood Services'),
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
