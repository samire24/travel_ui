import 'package:flutter/material.dart';

import 'activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
   required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities
});
}

List<Activity> activities = [
  Activity(
    imageUrl: "assets/images/20220215_164805.jpg",
    name: "Saint Andrew\'s Grammar",
    type: "Sightseeing Tour",
    startTimes: ["9:00am", "11:00am"],
    ratings: 5,
    price: 30,
  ),
  Activity(
    imageUrl: "assets/images/20220822_141354.jpg",
    name: "Walking Tour and Gandolisa Ride",
    type: "Sightseeing Tour",
    startTimes: ["11:00am", "1:00pm"],
    ratings: 4,
    price: 120,
  ),
  Activity(
    imageUrl: "assets/images/20220822_141422.jpg",
    name: "Murano and Benz Tour",
    type: "Sightseeing Tour",
    startTimes: ["13:00am", "2:00pm"],
    ratings: 8,
    price: 340,
  ),
  Activity(
    imageUrl: "assets/images/20220215_164805.jpg",
    name: "Saint Andrew\'s Grammar",
    type: "Sightseeing Tour",
    startTimes: ["9:00am", "11:00am"],
    ratings: 5,
    price: 30,
  )
];

List<Destination> destinations =[
  Destination(
      imageUrl: 'assets/images/20220215_164805.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit to the Lagoon of success',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/20220822_141422.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit to the Kilitorphirs',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/20220215_164805.jpg',
      city: 'Indianapolis',
      country: 'USA',
      description: 'Visit to the Johnkrima of success',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/20220822_141354.jpg',
      city: 'New York',
      country: 'USA',
      description: 'Theatre of dreams',
      activities: activities),
];