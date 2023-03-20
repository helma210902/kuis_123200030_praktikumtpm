import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'rental_car.dart';

class DetailPage extends StatelessWidget {
  final String brand;
  final int id;
  final String model;
  final int year;
  final String rentalPricePerDay;
  final bool available;
  final String description;

  const DetailPage({
    Key? key,
    required this.brand,
    required this.id,
    required this.model,
    required this.year,
    required this.rentalPricePerDay,
    required this.available,
    required this.description,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mobil'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Column(
            children: [

             
            ],
          ),
        ),
      ),
    );
  }
}import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'rental_car.dart';

class Detail extends StatelessWidget {
  final RentalCar place;
  const Detail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*automaticallyImplyLeading: false,*/
        title: Text(place.brand),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.images[0]),
                Image.network(place.images[1]),
                Image.network(place.images[2]),
              ],
            ),
          ),
          Text(place.brand),
          Text(place.model),
          Text(place.rentalPricePerDay),
          Text(place.description),
        ],
      ),
    );
  }
}
