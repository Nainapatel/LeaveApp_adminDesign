import 'package:flutter/material.dart';

class AdminProfileScreen extends StatefulWidget {
  @override
  AdminProfileScreenState createState() => AdminProfileScreenState();
}

class AdminProfileScreenState extends State<AdminProfileScreen> {
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
                child: Center(child: Text('Profile')),
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            new Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(9.0),
                              width: 85,
                              height: 85,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image: new ExactAssetImage(
                                      'assets/images/hover-3.jpg'),
                                ),
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(90.0)),
                                border: new Border.all(
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                    width: 250,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Akshay Karetiya',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Android Developer',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'As is well known, the device of involving real people...',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                size: 20,
                                color: Color(0xff050041),
                              ),
                              Text("   Email")
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[Text("Akshay.karetiya@gmail.com")],
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                size: 20,
                                color: Color(0xff050041),
                              ),
                              Text("   DOB")
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text("18-7-1990")],
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.phone_in_talk,
                                size: 20,
                                color: Color(0xff050041),
                              ),
                              Text("   Phone")
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text("1234569870")],
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: Color(0xff050041),
                              ),
                              Text("   Location")
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text("Rajkot")],
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                size: 20,
                                color: Color(0xff050041),
                              ),
                              Text("   Joining Date")
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(9.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text("18-7-2019")],
                      ))
                ],
              ),
            ])),
          ],
        ));
  }
}
