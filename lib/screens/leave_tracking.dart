import 'package:flutter/material.dart';

class LeaveTrackingScreen extends StatefulWidget {
  @override
  LeaveTrackingScreenState createState() => LeaveTrackingScreenState();
}

class LeaveTrackingScreenState extends State<LeaveTrackingScreen> {
  Widget card() {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(8.0),
                    width: 70,
                    height: 70,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new ExactAssetImage('assets/images/hover-3.jpg'),
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(90.0)),
                      border: new Border.all(
                        width: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                              width: 290,
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Akshay Karetiya',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'As is well known, the device of involving real people...',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Applied For Leaves",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text("02 Days / ",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("15",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey))
                                              ],
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "Date",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Text("25 - 27 ",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.grey)),
                                                    Text("December",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.red))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ))
                        ],
                      )
                    ],
                  ))
            ],
          ),
          Divider(),
          Container(
              width: 300,
              margin: const EdgeInsets.only(left: 75.0),
              child: Row(
                children: <Widget>[
                  new Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        child: Text('Approve',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.red)),
                        onPressed: () {},
                        borderSide: BorderSide(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 0.8,
                        ),
                      )),
                  new Container(
                    margin: const EdgeInsets.only(left: 5.0),
                    child: FlatButton(
                      color: Color(0xff050041),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {},
                      child: Text(
                        'Reject',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: FlatButton(
                      color: Color(0xff4398C4),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                  content: Form(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                                "assets/images/leave_reason.png")
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              " Reason For Leave",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 220,
                                      margin: EdgeInsets.only(left: 23),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                              "Leave Due to Wedding season And attending ceremony at Hometown")
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                 Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                                "assets/images/leave_date.png")
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              " Leave date",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 220,
                                      margin: EdgeInsets.only(left: 23),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                              "25 - 27 December")
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    new Container(
                                      margin: const EdgeInsets.only(left: 5.0),
                                      child: FlatButton(
                                        color: Color(0xff050041),
                                        textColor: Colors.white,
                                        padding: EdgeInsets.all(5.0),
                                        splashColor: Colors.blueAccent,
                                        onPressed: () {Navigator.of(context).pushNamed("/leave_tracking");},
                                        child: Text(
                                          'Close',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                            });
                      },
                      child: Text(
                        'Details',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/images/raoinfotech-logo-login.png',
                  width: 50, height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/dashboard");
                },
                child: Image.asset('assets/images/dashboard.png',
                    width: 50, height: 50),
              ),
              Expanded(
                child: Center(child: Text('Leave Tracking')),
              )
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/leave_notification");
                    },
                    child: Stack(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        )),
                        new Positioned(
                          right: 9,
                          top: 5,
                          child: new Container(
                            padding: EdgeInsets.all(2),
                            decoration: new BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/log_out.png',
                        width: 50, height: 50),
                  ),
                ],
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              Column(children: <Widget>[
                card(),
                card(),
                card(),
                card(),
              ])
            ])),
          ],
        ));
  }
}
