import 'package:flutter/material.dart';
import 'package:kuuis/detail.dart';

import 'movie.dart';

import 'rental_car.dart';

class HalamanDetail extends StatefulWidget {
  const HalamanDetail({Key? key}) : super(key: key);

  @override
  _HalamanDetailState createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rental Mobil'),
      ),
      body: ListView.builder(
        itemCount: rentalCar.length,
        itemBuilder: (context, index) {
          final RentalCar place = rentalCar[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(
                    place: place,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  //gambar
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.network(place.images[0]),
                  ),
                  //text
                  Text(place.brand),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
