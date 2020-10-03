import 'package:flutter/material.dart';
import 'package:paradigmshift/History Tab/timeline.dart';
import 'package:paradigmshift/Constants/constants.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  List<Color> colors = [Colors.blue, Colors.black26, Colors.grey];
  List<TimeLineCard> timeline;
  @override
  void initState() {
    super.initState();
    timeline = _getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: timeline.length,
          itemBuilder: (context,index){
            return Container(
              color: Colors.black,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 2,
                        height: 50,
                        color: index == 0 ? Colors.black : Colors.white,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        child: Icon(
                          timeline[index].icon,
                          color: colors[1],
                        ),
                      ),

                      Container(
                        width: 2,
                        height: 50,
                        color: index == timeline.length - 1 ? Colors.black : Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(

                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(top: BorderSide(width: 4, color: Colors.white60)),
                        boxShadow: [BoxShadow(
                          blurRadius: 10,
                          color: Colors.white54,
                        )],
                      ),
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              timeline[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              timeline[index].description,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

//ToDo: Insert Data

List<TimeLineCard> _getCards(){
  List<TimeLineCard> timelineCard = [];

  timelineCard.add(TimeLineCard('Birth', '', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));

  return timelineCard;
}