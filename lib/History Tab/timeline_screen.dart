import 'package:flutter/material.dart';
import 'package:paradigmshift/History Tab/timeline.dart';
import 'package:paradigmshift/Constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';


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
                          color: Colors.black,
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
                    child: GestureDetector(
                      onTap: () async {
                        var url = timeline[index].url;
                        if (await canLaunch(url)) {
                        await launch(url);
                        } else {
                        throw 'Could not launch $url';
                      }
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(top: BorderSide(width: 4, color: Colors.black87)),
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            color: Colors.white38,
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
                                style: kTitleStyle,
                              ),
                              Text(
                                timeline[index].description,
                                style: kDescriptionStyle,
                              ),
                            ],
                          ),
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


//Database

List<TimeLineCard> _getCards(){
  List<TimeLineCard> timelineCard = [];

  timelineCard.add(TimeLineCard('Birth', 'Kalpana Chawla was born on March 17, 1962, in Karnal, Haryana.', Icons.flare,'https://www.space.com/17056-kalpana-chawla-biography.html'));
  timelineCard.add(TimeLineCard('Education', 'In 1976, Chawla graduated from the Tagore Baal Niketan School, where she was a high-performing student.', Icons.book,'https://history.nasa.gov/columbia/Troxell/Columbia%20Web%20Site/CAIB/CAIB%20Synopsis.htm#_edn1'));
  timelineCard.add(TimeLineCard('', 'Dr. Kaplana Chawla graduated from Aerospace Engineering Department of PEC.', Icons.laptop_chromebook,'https://www.firstpost.com/tech/science/remembering-kalpana-chawla-astronaut-inspiration-the-first-indian-woman-in-space-6004421.html'));
  timelineCard.add(TimeLineCard('', 'She moved to the United States in 1982.', Icons.airplanemode_active,''));
  timelineCard.add(TimeLineCard('Higher Education', 'Kalpana obtained a Master of Science degree in Aerospace Engineering from the University of Texas at Arlington in 1984', Icons.collections_bookmark,''));
  timelineCard.add(TimeLineCard('', 'Chawla went on to earn a second \nMasters in 1986.', Icons.library_books,''));
  timelineCard.add(TimeLineCard('', 'She earned a PhD in Aerospace Engineering in 1988 from the University of Colorado', Icons.collections,''));
  timelineCard.add(TimeLineCard('', 'Chawla married to Jean-Pierre Harrison in 1983.', Icons.people_outline,''));
  timelineCard.add(TimeLineCard('', 'In 1988, Kalpana Chawla started work at NASA Ames Research Center', Icons.work,''));
  timelineCard.add(TimeLineCard('', 'In 1993 Kalpana Chawla joined Overset Methods Inc., Los Altos, California, as Vice President.', Icons.group_work,''));
  timelineCard.add(TimeLineCard('Selected by NASA', 'December 1994, Kalpana Chawla reported to the Johnson Space Center in March 1995 as an astronaut candidate.', Icons.camera_front,''));
  timelineCard.add(TimeLineCard('', 'Her first space mission began on November 19, 1997, as part of the six-astronaut crew.', Icons.spa,''));
  timelineCard.add(TimeLineCard('', 'In 2001, Chawla was selected for her second flight as part of the crew of STS-107.', Icons.lens,''));
  timelineCard.add(TimeLineCard('', 'Chawla finally returned to space aboard Space Shuttle Columbia on the ill-fated STS-107 Mission.', Icons.change_history,'https://2020.spaceappschallenge.org/challenges/inform/mission-planet-earth-digital-history/details'));
  timelineCard.add(TimeLineCard('Columbia Incident', 'Chawla died on February 1, 2003, in the Space Shuttle Columbia disaster.', Icons.warning,'https://history.nasa.gov/columbia/Troxell/Columbia%20Web%20Site/CAIB/CAIB%20Synopsis.htm'));
  timelineCard.add(TimeLineCard('In the News', 'NASA lifts off SS Kalpana Chawla cargo spacecraft.', Icons.tag_faces,''));
  timelineCard.add(TimeLineCard('', 'Flight to the International Space Station, this time named after late astronaut \‘Kalpana Chawla\'', Icons.tablet_android,''));
  return timelineCard;
}