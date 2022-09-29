import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/bulding.dart';
import 'package:flutter_application_1/screen/deviceDetails.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var buildinges = [
    Building(
      name: 'laptop',
      imgurl:
          'https://th.bing.com/th/id/OIP.SwzaKVk5bfJjjfF00BcLRAHaEk?pid=ImgDet&rs=1',
    ),
    Building(
      name: 'Airpod',
      imgurl:
          'https://i0.wp.com/raqamitv.com/wp-content/uploads/2022/09/gsmarena_001-40.jpg?resize=1024%2C817&ssl=1%27',
    ),
    Building(
      name: 'laptop',
      imgurl:
          'https://th.bing.com/th/id/OIP.SwzaKVk5bfJjjfF00BcLRAHaEk?pid=ImgDet&rs=1',
    ),
    Building(
      name: 'Ipad',
      imgurl:
          'https://th.bing.com/th/id/OIP.8TX80-TJaRF6VBI7yPC0aAHaE8?pid=ImgDet&rs=1%27',
    ),
    Building(
      name: 'Iphone',
      imgurl:
          'https://th.bing.com/th/id/OIP.Tj49Xw5r7SoweAQ8PAsK7QHaCn?pid=ImgDet&rs=1%27',
    ),
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Electonics'),
        ),
        body: ListView(children: [
          devices(
            building: buildinges[0],
          ),
          devices(
            building: buildinges[1],
          ),
          devices(
            building: buildinges[2],
          ),
          devices(
            building: buildinges[3],
          ),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class devices extends StatelessWidget {
  devices({required this.building});

  Building building;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
      child: Container(
        margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
        child: ListTile(
          tileColor: Colors.grey[300],
          leading: CircleAvatar(foregroundImage: NetworkImage(building.imgurl)),
          title: Text(
            building.name,
            textAlign: TextAlign.center,
          ),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DeviceDetails(bulding: building);
                },
              ));
            },
            child: Icon(Icons.arrow_right_alt),
          ),
        ),
      ),
    );
  }
}
