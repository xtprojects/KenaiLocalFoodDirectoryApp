import 'package:flutter/material.dart';
import '/components/entity.dart';

class AlaskaFoodHub extends StatefulWidget {
  const AlaskaFoodHub({super.key});

  @override
  State<AlaskaFoodHub> createState() => _AlaskaFoodHubState();
}

class _AlaskaFoodHubState extends State<AlaskaFoodHub> {

  List<Entity> entities = [
    Entity(
      name: 'Alaska Food Hub',
      description: 'Vegetables, fruit, plants, flowers, preserves, honey, mushrooms, eggs, meat, seafood, baked goods. Online marketplace for farmers, fishers, and makers',
      email: 'www.alaskafoodhub.org',
    ),
    Entity(
      name: 'Homer Farmers Market',
      address: 'Ocean Drive, across from The Washboard',
      phoneNumber: '907-299-7540',
      email: 'manager@homerfarmersmarket.org',
      operationHours: 'Wed 2-5pm, Sat 10-3pm, May 25 - September 28',
      description: 'Farmers market',
    ),
    Entity(
      name: 'Nikiski Hardware',
      address: '52951 Porter Ave, Nikiski',
      phoneNumber: '907-776-7500',
      email: 'stacy@nikiskihardware.com',
      operationHours: 'Monday 10am-4pm, June 17 - August 12',
      description: 'Nikiski Market at Nikiski Hardware & Supply',
    ),
    Entity(
      name: 'Soldotna Saturday Farmers Market',
      address: '193 E. Corral Ave., Soldotna',
      phoneNumber: '907-394-2175',
      operationHours: 'Saturday 10am-2pm, June - September',
      description: 'Farmers market',
    ),
    Entity(
      name: 'Soldotna Wednesday Market',
      operationHours: 'Every Wednesday, 11am to 6pm or later June thru Aug at Soldotna Creek Park',
      phoneNumber: '(907) 252-7264',
      email: 'soldotnawednesdaymarket@gmail.com',
      description: 'Weekly market in Soldotna Creek Park',
    ),
    Entity(
      name: 'Alaska Farmers Market Association',
      email: 'info@alaskafarmersmarkets.org',
      description: 'See AFMA\'s statewide directory at alaskafarmersmarkets.org',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Farmers Markets'),
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


