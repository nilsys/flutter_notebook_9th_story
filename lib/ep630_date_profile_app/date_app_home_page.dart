import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DateAppHomePage extends StatefulWidget {
  @override
  _DateAppHomePageState createState() => _DateAppHomePageState();
}

class _DateAppHomePageState extends State<DateAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Icon(Icons.notifications_none, color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  )
                  Text("Meet", style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child:  Stack(
                        children: [
                           Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],

                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child:Container(
                        color: Colors.black,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CircularPercentIndicator(
                                radius: 84,
                                percent: 0.7,
                                progressColor: Colors.pink[100],
                                center: Text(
                                  "75.0%",
                                  style: TextStyle(color: Colors.pink[100]),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dream, ??",
                                    style: TextStyle(color: Colors.white, fontSize: 22),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      child: Text("5`10``"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                radius: 42,
                                backgroundColor: Colors.pink[100],
                                foregroundColor: Colors.black,
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 42,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )

            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}



















