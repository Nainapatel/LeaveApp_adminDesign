import 'package:flutter/material.dart';

void main() {
  runApp(new DashboardScreen());
}

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: new Image.asset('assets/images/raoinfotech-logo-login.png',
                  width: 50, height: 50),
          title:
              new Align(alignment: Alignment.center, child: Text('Dashboard')),
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
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed("/leave_tracking");
                              },
                              child: Column(
                                children: <Widget>[
                                  new Container(
                                      padding: const EdgeInsets.all(20.0),
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromRGBO(224, 242, 255, 0.9),
                                      ),
                                      child: Image.asset(
                                          'assets/images/tracking -dasboard.png',
                                          width: 70,
                                          height: 70,
                                          color: Color.fromRGBO(
                                              63, 138, 201, 0.9))),
                                  Text("Tracking")
                                ],
                              )),
                          Container(
                              height: 150,
                              child: VerticalDivider(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/leave_user");
                            },
                            child: Column(
                              children: <Widget>[
                                new Container(
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(253, 246, 229, 0.9),
                                    ),
                                    child: Image.asset(
                                        'assets/images/users -dashboard.png',
                                        width: 70,
                                        height: 70,
                                        color:
                                            Color.fromRGBO(63, 138, 201, 0.9))),
                                Text("Users")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/admin_profile");
                            },
                            child: Column(
                              children: <Widget>[
                                new Container(
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(252, 235, 232, 0.9),
                                    ),
                                    child: Image.asset(
                                        'assets/images/profile-dashboard.png',
                                        width: 70,
                                        height: 70,
                                        color:
                                            Color.fromRGBO(63, 138, 201, 0.9))),
                                Text("Profile")
                              ],
                            ),
                          ),
                          Container(
                              height: 150,
                              child: VerticalDivider(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/leave_report");
                            },
                            child: Column(
                              children: <Widget>[
                                new Container(
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(224, 242, 255, 0.9),
                                    ),
                                    child: Image.asset(
                                        'assets/images/Reports-dashboard.png',
                                        width: 70,
                                        height: 70,
                                        color:
                                            Color.fromRGBO(63, 138, 201, 0.9))),
                                Text("Reports")
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ))
            ])),
          ],
        ));
  }
}
