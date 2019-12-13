import 'package:flutter/material.dart';

class LeaveNotificationScreen extends StatefulWidget {
  @override
  LeaveNotificationScreenState createState() => LeaveNotificationScreenState();
}

class LeaveNotificationScreenState extends State<LeaveNotificationScreen> {
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
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          18.0),
                                                  side: BorderSide(
                                                      color:
                                                          Color(0xff57D985))),
                                              onPressed: () {},
                                              color: Color(0xff57D985),
                                              textColor: Colors.grey,
                                              child: Text("Status",
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 15),
                                              child: Text(
                                                "Approved",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                           Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Applied For Leaves",
                                              style: TextStyle(
                                                  fontSize: 15,
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
              Image.asset('assets/images/dashboard.png', width: 50, height: 50),
              Expanded(
                child: Center(child: Text('Notification')),
              )
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                children: <Widget>[
                
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
