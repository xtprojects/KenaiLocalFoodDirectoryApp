import 'package:flutter/material.dart';
import '/components/entity.dart';

class CottageEnterprises extends StatefulWidget {
  const CottageEnterprises({super.key});

  @override
  State<CottageEnterprises> createState() => _CottageEnterprisesState();
}

class _CottageEnterprisesState extends State<CottageEnterprises> {
  List<Entity> entities = [
    Entity(
      name: 'Wild Currant Alaska',
      phoneNumber: '(907) 394-2229',
      description: 'Vegetables, Fruit, Preserves, Mushrooms, Baked Goods, Beverages - Kombucha, sauerkraut, soft pretzels, popsicles, etc.',
    ),
    Entity(
      name: 'Kenai River Coffee Company',
      phoneNumber: '907-395-4080',
      description: 'Custom roasted coffee beans from around the world',
    ),
    Entity(
      name: 'Krafted on the Kenai',
      phoneNumber: '907-394-3025',
      email: 'kraftedonthekenai@gmail.com',
      description: 'Pickled onions & garlic, hot sauces, marmalade',
    ),
    Entity(
      name: 'Rosie’s Pasta',
      phoneNumber: '(907) 399-3813',
      description: 'At retailers statewide. We take special orders.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Cottage Enterprises'),
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
