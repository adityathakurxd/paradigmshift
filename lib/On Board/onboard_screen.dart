import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:paradigmshift/Constants/constants.dart';


class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
          pages: [
            Container(
             color: Colors.white,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Paradigm Shift',
                         style: kOnBoardText,
                       ),
                       FlatButton(
                         onPressed: (){
                           Navigator.pushNamed(context, '/');
                         },
                         child: Text(
                           'Launch',
                           style: kOnBoardText,
                         ),
                       ),
                     ],
                   ),
                 ),
                 //Image.asset('kalpana.jpg'),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Kalpana',
                         style: kKalpanaText,
                       ),
                       Text(
                         'Chawla',
                         style: kChawlaText,
                       ),
                       SizedBox(
                         height: 20,
                       ),
                       Text(
                         'The first woman of Indian origin\nto go to space.',
                         style: kOnBoardText,
                       ),
                     ],
                   ),
                 ),
               ],
             ),
            ),
            Container(
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Paradigm Shift',
                          style: klightOnBoardText,
                        ),
                        FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Launch',
                            style: klightOnBoardText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Image.asset('kalpana.jpg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kalpana',
                          style: klightKalpanaText,
                        ),
                        Text(
                          'Chawla',
                          style: klightChawlaText,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'US spacecraft named after late\nIndian-American astronaut Kalpana Chawla.',
                          style: klightOnBoardText,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Paradigm Shift',
                          style: klightOnBoardText,
                        ),
                        FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Launch',
                            style: klightOnBoardText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Image.asset('kalpana.jpg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kalpana',
                          style: klightKalpanaText,
                        ),
                        Text(
                          'Chawla',
                          style: kwhiteChawlaText,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Chawla died on February 1, 2003,\nin the Space Shuttle Columbia disaster',
                          style: klightOnBoardText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





