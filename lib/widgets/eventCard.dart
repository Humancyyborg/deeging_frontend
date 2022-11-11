import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ClipRect(
        child: Container(
          width: 360,
          height: 116,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: const Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(
              color: const Color.fromRGBO(132, 132, 132, 1),
              width: 1,
            ),
          ),
          child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          '5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Rubik',
                              fontSize: 36,
                              letterSpacing: -0.16500000655651093,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ),
                      Text(
                        'Sept',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(19, 19, 19, 1),
                            fontFamily: 'Rubik',
                            fontSize: 17,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const VerticalDivider(
                  color: Color.fromRGBO(132, 132, 132, 1),
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  Text(
                      '2022 Friendgiving Dinner',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                          height: 1),
                    ),
                   const  SizedBox(
                      height: 10.0,
                    ),
                   
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        children: [
                          TextSpan(
                            text: 'Hosted by',
                          ),
                           WidgetSpan(child: SizedBox(width: 10)),
                          
                          TextSpan(
                              text: 'Daniel KALU',
                              style: TextStyle(color: Color.fromARGB(255, 13, 99, 170))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          'Palace of FineArt',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(19, 19, 19, 1),
                              fontFamily: 'Rubik',
                              fontSize: 17,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
