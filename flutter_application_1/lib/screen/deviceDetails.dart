// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/bulding.dart';

// ignore: must_be_immutable
class DeviceDetails extends StatelessWidget {
  var bulding;

  DeviceDetails({super.key, required this.bulding});

  Building building;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var name;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(DeviceDetails.imgurl),
            radius: 90,
          ),
          Text(
            DeviceDetails.name,
            style: TextStyle(fontSize: 28),
          )
        ],
      ),
    );
  }
}
