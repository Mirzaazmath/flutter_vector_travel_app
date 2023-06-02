import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String>categorylist=["Best nature","Most viewed","Recommended"];



class Place{
  final String name;
  final String image;
  final String location;

  Place({required this.name,required this.image,required this.location});

}

List<Place>placelist=[
  Place(image: "assets/place1.jpeg",name:"Light House Island",location: "National Park of Ireland"),
  Place(image: "assets/mountain.jpeg",name:"Exotic Mountains",location: "Jubilee Hills"),
  Place(image: "assets/night.jpeg",name:"Cross Valley Lake",location: "Pennsylvania"),
  Place(image: "assets/lighthouse.jpeg",name:"Nicobar Island",location: "Andaman Coast"),


];

class Pcategory{
  final Color color;
  final String name;
  final IconData icon;
  Pcategory({required this.name,required this.icon,required this.color});
}
List<Pcategory>pcategorylist=[
  Pcategory(name: "Beach",color:const  Color(0xfff5d0ea),icon: Icons.surfing),
  Pcategory(name: "Camping",color:const  Color(0xff9fd0f6),icon: Icons.campaign),
  Pcategory(name: "Car",color:const  Color(0xffd0bcf2),icon: Icons.directions_car),
  Pcategory(name: "Food",color:const  Color(0xfff9ced0),icon: Icons.brunch_dining)

];