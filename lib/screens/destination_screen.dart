import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/models/activity_model.dart';
import 'package:travel_app_ui/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({Key? key, required this.destination}) : super(key: key);

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {

  Text _buildRatingStars(int rating){
    String stars= '';
    for (int i= 0; i< rating; i++){
      stars += 'X ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.search),
                          iconSize: 30,
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 30,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.city,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 10.0,
                          color: Colors.white70,
                        ),
                        Text(
                          widget.destination.country,
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  itemCount: widget.destination.activities.length,
                  itemBuilder: (BuildContext context, int index) {
                    Activity activity = widget.destination.activities[index];
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(100.0,20.0,20.0,20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 120.0,
                                      child: Text(
                                        activity.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '\$${activity.price}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        const Text(
                                          'per tax',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  activity.type,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                _buildRatingStars(activity.ratings),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Theme.of(context).accentColor,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(activity.startTimes[0]),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Theme.of(context).accentColor,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(activity.startTimes[1]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left:20.0,
                          top: 15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110.0,
                              image: AssetImage(activity.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
