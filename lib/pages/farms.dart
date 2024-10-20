import 'package:flutter/material.dart';
import '/components/entity.dart';

class Farms extends StatefulWidget {
  const Farms({super.key});

  @override
  State<Farms> createState() => _FarmsState();
}

class _FarmsState extends State<Farms> {
  List<Entity> entities = [
    Entity(
      name: 'Anchor Point Greenhouse',
      address: '33851 Alder St Anchor Point, AK',
      phoneNumber: '(907) 399-1580, (907) 235-7288',
      email: 'apgreenhouse@alaska.net',
      operationHours: 'Mon-Sat 10am-6pm',
      description: 'Veggies, fruit, plants (including starts), flowers, eggs',
    ),
    Entity(
      name: 'Arnold Family Farm',
      address: 'Sterling, AK',
      phoneNumber: '907-252-0661',
      email: 'arnoldfamilyfarmak@gmail.com',
      description: 'Vegetables, plants (including plant starts), other',
    ),
    Entity(
      name: 'Cook Inlet Gardens',
      address: '51540 Eagle Ave, Kenai',
      phoneNumber: '907-953-1964',
      email: 'office@cookinletgardens.com',
      operationHours: 'Mon-Sat, 8am-5pm',
      description: 'Plants (including starts), flowers, CSA, U',
    ),
    Entity(
      name: 'Dandelion Acres',
      address: '4412 N Dogwood Road, Kenai',
      phoneNumber: '(907) 394-8321',
      email: 'dandelion_acres@yahoo.com',
      description: 'Vegetables, eggs, meat/poultry',
    ),
    Entity(
      name: 'Edgy Veggie Co.',
      address: '35403 KB Drive Soldotna, AK 99669',
      phoneNumber: '(907) 262-9906',
      email: 'info@edgyveggieco.com',
      operationHours:
      'Summer: M/T/TH/FR 9am-5pm, W 9am-4pm; Winter: M/T/TH/FR 10am-4pm, W 10am-3pm',
      description: 'Vegetables',
    ),
    Entity(
      name: 'Fresh 365',
      address: '43546 Whistle Hill Loop, Soldotna',
      phoneNumber: '(907) 741-1720',
      email: 'fresh365soldotna@gmail.com',
      operationHours: 'Tues/Thurs 10am-4pm, Fri/Sat 9am-2pm, Most Sundays 10am-2pm, Closed Mon/Wed',
      description: 'Vegetables, mushrooms, specialty (greens, lettuces, herbs, microgreens, mushrooms)',
    ),
    Entity(
      name: 'Funny River Peonies',
      address: '34340 Four Careys Ct., Soldotna',
      phoneNumber: '907-244-4905 or 240-4386',
      email: 'dcarey@funnyriverpeonies.com',
      operationHours: 'Check FB page for Open House & U-Pick events',
      description: 'Plants (including plant starts), flowers, U',
    ),
    Entity(
      name: 'Grace Acres Farm',
      address: 'Mile 110.3 corner Abram & Sterling Hwy, Kasilof',
      phoneNumber: '907-748-7410 or 727-4839',
      email: 'cnl6jll@gmail.com',
      operationHours: 'Sun-Sat 10am-8pm, June 15-Oct15',
      description: 'Vegetables, fruit, plants (including starts), flowers, eggs, preserves, meat/poultry, livestock, baked goods, CSA, U, specialty',
    ),
    Entity(
      name: 'Jackson Gardens',
      address: '48195 Johns Rd Soldotna',
      phoneNumber: '(907) 252-9459',
      operationHours: 'Monday - Saturday 9am to 6pm',
      description: 'Vegetables, fruits, plants, flowers, preserves, beverages, U',
    ),
    Entity(
      name: 'Lancashire Farms',
      phoneNumber: '(907) 252-5064',
      email: 'lancashirefarms@gmail.com',
      description: 'Vegetables, plants, preserves, eggs, livestock, meat, other',
    ),
    Entity(
      name: 'Northern Bloom Peonies',
      address: '49769 Island Lake Road, Nikiski',
      phoneNumber: '(907) 399-7441',
      email: 'northernbloompeonies@outlook.com',
      description: 'Flowers, CSA, U, Shipping available USA only',
    ),
    Entity(
      name: 'Northland Farm LLC',
      phoneNumber: '(907) 741-7862',
      description: 'Vegetables',
    ),
    Entity(
      name: "O'Brien Garden and Trees",
      address: '49240 Freda Drive, Nikiski',
      phoneNumber: '907-598-1339',
      email: 'obriengardentrees@yahoo.com',
      operationHours: 'Mon-Sat, 10am-2pm (seasonal) and by appointment',
      description: 'Vegetables, fruits, plants, preserves, honey, CSA, specialty, U',
    ),
    Entity(
      name: 'Rafter M Farm',
      address: 'Cohoe, Alaska',
      phoneNumber: '(907) 252-0607',
      email: 'akraftermfarm@gmail.com',
      description: 'Vegetables, plants, honey, eggs, meat, livestock, CSA, specialty',
    ),
    Entity(
      name: 'Sweetwater Hill',
      email: 'anna@sweetwaterhill.com',
      description: 'Vegetables',
    ),
    Entity(
      name: 'Veggies n Stuff',
      address: '49690 Two June’s Avenue, Nikiski',
      phoneNumber: '907-398-8640',
      email: 'veggiesnstuffak@yahoo.com',
      operationHours: 'Tue 10am - 4pm, Sat 10am - 5pm and by appointment',
      description: 'Vegetables, plants, flowers, preserves, baked goods, specialty',
    ),
    Entity(
      name: 'Wilderness Earth Farm LLC',
      address: '36995 Ansel St. N Soldotna',
      phoneNumber: '(808) 391-9111',
      email: 'WildernessEarthFarm@gmail.com',
      operationHours: 'June-October, Tue-Fri 12pm-5pm',
      description: 'Vegetables',
    ),
    Entity(
      name: 'Whispering Birch Farm of Alaska',
      address: 'Soldotna',
      phoneNumber: '(907) 251-0414, (907) 260-2051',
      email: 'whisperingbirchfarmofak@gmail.com',
      description: 'Honey, eggs, livestock, meat/poultry, specialty, CSA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Farms'),
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
