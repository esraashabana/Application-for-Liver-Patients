import 'package:flutter/material.dart';

import '../../../screens/event_calender.dart';
import '../../review/review_doc.dart';
import 'calender.dart';

class completed_doc extends StatefulWidget {
  const completed_doc({Key? key}) : super(key: key);

  @override
  State<completed_doc> createState() => _completed_docState();
}

class _completed_docState extends State<completed_doc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              child: Image.asset('images/dr2.jpg',
                                  // width: 300,
                                  height: 130,
                                  fit: BoxFit.fill),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Dr.Hossam Ali',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Completed',
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            side: BorderSide(
                                                width: 2,
                                                color: Colors.greenAccent),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                              15,
                                            )))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.chat_rounded,
                                      color: Color(0xFF008CB6),
                                    )
                                  ],
                                ),
                                Text('Feb 5 2023'),
                                Text('9:00 AM')
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            EventCalendarScreen1(),
                                      )),
                                  child: Text(
                                    'Book Again',
                                    style: TextStyle(color: Color(0xFF008CB6)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      side: BorderSide(
                                          width: 3, color: Color(0xFF008CB6)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        20,
                                      )))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 180,
                              child: ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AddDoctorReview(),
                                      )),
                                  child: Text('leave a Review'),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF008CB6),
                                      side: BorderSide(
                                          width: 3, color: Color(0xFF008CB6)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        20,
                                      )))),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
