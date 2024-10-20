import 'package:flutter/material.dart';
import '/components/entity.dart';

class FoodBeverage extends StatefulWidget {
  const FoodBeverage({super.key});

  @override
  State<FoodBeverage> createState() => _FoodBeverageState();
}

class _FoodBeverageState extends State<FoodBeverage> {
  List<Entity> entities = [
    Entity(
      name: 'Addie Camp',
      address: '43550 Whistle Hill Loop, Soldotna',
      phoneNumber: '(907) 262-2334',
      email: 'whistlehillsoldotna@gmail.com',
      operationHours: 'Winter: Tue-Sat 5:00-8:30, Sun 10:00-2:00; Summer: Tues-Sun 5:00-9:00',
      description: 'Vegetables, Mushrooms, Fish/Seafood, Beverages, Baked Goods',
    ),
    Entity(
      name: 'Bear Creek Winery',
      address: '60203 Bear Creek Drive, Homer',
      phoneNumber: '907-318-2470',
      email: 'bluzin@bearcreekwinery.com',
      operationHours: 'Summer: 11-6pm daily & Winter: 12-6pm daily',
      description: 'Beverages, Lodging',
    ),
    Entity(
      name: 'Big Dawgs Hot Dog Stand',
      address: '44332 Sterling Highway, Soldotna',
      phoneNumber: '(907) 398-7541',
      email: 'bigdawgshotdogs.ak@outlook.com',
      operationHours: 'Tuesday-Saturday 11:30a-7p',
      description: 'Vegetables, preserves, meat, Alaskan Twist on an American Favorite–The Hot Dog!',
    ),
    Entity(
      name: 'brew@602',
      address: '43540 Whistle Hill Loop, Soldotna',
      phoneNumber: '(907) 262-0602',
      email: 'brewat602@gmail.com',
      operationHours: 'Winter: Mon-Sat 8:00-3:00, Sun 8:00-2:00; Summer: Mon-Sat 7:00-5:00, Sun 8:00-2:00',
      description: 'Baked goods, beverages Espresso, gourmet Belgium waffles in a railcar.',
    ),
    Entity(
      name: 'Fireweed Bakeshop',
      phoneNumber: '(907) 825-2224',
      email: 'fireweedbakeshop@gmail.com',
      description: 'Vegetables, fruit, flowers, preserves, baked goods, beverages',
    ),
    Entity(
      name: 'Kenai Peninsula Food Bank, Inc.',
      address: '33955 Community College Drive, Soldotna',
      phoneNumber: '(907) 416-7619',
      email: 'info@kpfoodbank.org',
      operationHours: 'Mon-Fri: 11:30am-1:00pm (Fireweed Diner), 12:00pm-4:00pm (Food Distribution), 10:00am-4:00pm (Warehouse)',
      description: 'Specialty Food Distribution',
    ),
    Entity(
      name: 'Lucy\'s Market',
      address: '338 Homestead Lane, Soldotna',
      phoneNumber: '907-262-3232',
      email: 'lucysalaska@gmail.com',
      operationHours: 'Mon-Sat 10a-6p',
      description: 'Vegetables, Fruit, Preserves, Honey, Beverages, Baked Goods',
    ),
    Entity(
      name: 'Odin\'s Ice',
      phoneNumber: '(907) 690-1804',
      email: 'odinsiceak@gmail.com',
      description: 'Fruit, Beverages, Baked Goods',
    ),
    Entity(
      name: 'Olde Goat Café',
      address: '52951 Porter Dr, Nikiski',
      phoneNumber: '(907) 690-4605',
      email: 'oldegoatcafe@gmail.com',
      operationHours: 'Mon-Fri 7am-4pm, Sat 8am-4pm',
      description: 'Vegetables, Beverages, Baked Goods',
    ),
    Entity(
      name: 'The Hearth Eatery and Catering',
      address: '10544 Kenai Spur Highway, Kenai',
      phoneNumber: '(907) 306-9134 (catering), (907) 283-9134 (office)',
      email: 'chefvirginia@theheartheatery.com',
      description: 'Vegetables, Fruit, Honey, Mushrooms, Eggs, Meat, Seafood',
    ),
    Entity(
      name: 'The Reindeer Hut',
      description: 'Vegetables, Fruit, Eggs, Meat, Baked Goods, Specialty',
    ),
    Entity(
      name: 'Two Sisters Bakery',
      address: '233 E Bunnell Ave, Homer',
      phoneNumber: '(907) 235-2280',
      email: 'baked@xyz.net',
      operationHours: 'Wed-Sat 10am-3pm',
      description: 'Vegetables, Flowers, Fruit, Eggs, Seafood, Baked Goods, Beverages',
    ),
    Entity(
      name: 'Where It\'s At! mindful food & drink',
      address: '45015 A K-Beach Rd, Soldotna',
      phoneNumber: '(907) 252-5977',
      email: 'mindfullivingcollective@gmail.com',
      operationHours: 'Mon-Fri 9a-6p, Sat 10a-5p',
      description: 'Vegetables, Fruit, Mushrooms, Eggs, Meat, Seafood, Baked Goods',
    ),
    Entity(
      name: 'Wok N Roll',
      phoneNumber: '(907) 394-0980',
      email: 'woknroll_alaska@yahoo.com',
      description: 'Vegetables',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Food & Drink'),
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
