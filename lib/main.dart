import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: ImageSlider()),
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400.png?text=Image+1',
    'https://via.placeholder.com/600x400.png?text=Image+2',
    'https://via.placeholder.com/600x400.png?text=Image+3',
    'https://via.placeholder.com/600x400.png?text=Image+4',
    'https://via.placeholder.com/600x400.png?text=Image+5',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        // boxShadow: [
        //   BoxShadow(
        //     // color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: Offset(0, 3), // changes position of shadow
        //   ),
        // ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            autoPlay: false,
            viewportFraction: 1.0,
          ),
          items: imgList.map((item) => Container(
            child: Center(
              child: Image.network(item, fit: BoxFit.cover, width: double.infinity),
            ),
          )).toList(),
        ),
      ),
    );
  }
}
