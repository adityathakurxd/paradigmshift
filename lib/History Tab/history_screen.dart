import 'package:flutter/material.dart';
import 'package:paradigmshift/History Tab/timeline.dart';
import 'package:paradigmshift/Constants/constants.dart';
class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'History'
        ),
      ),
      body: Timeline(),
    );
  }
}

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
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 2,
                    height: 50,
                    color: index == 0 ? Colors.white : Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Icon(
                      timeline[index].icon,
                      color: colors[2],
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 50,
                    color: index == timeline.length - 1 ? Colors.white : Colors.black,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(width: 4, color: Colors.blueAccent)),
                    boxShadow: [BoxShadow(
                      blurRadius: 10,
                      color: Colors.black26,
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
                          fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(
                          timeline[index].description,
                          style: TextStyle(
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


List<TimeLineCard> _getCards(){
  List<TimeLineCard> timelineCard = [];

  timelineCard.add(TimeLineCard('Aditya', 'Check this out', Icons.check));
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