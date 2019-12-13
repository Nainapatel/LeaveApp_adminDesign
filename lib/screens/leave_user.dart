import 'package:flutter/material.dart';

class LeaveUserScreen extends StatefulWidget {
  @override
  LeaveUserScreenState createState() => LeaveUserScreenState();
}

class LeaveUserScreenState extends State<LeaveUserScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
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
                  onTap: () { Navigator.of(context).pushNamed("/dashboard");},
            child:Image.asset('assets/images/dashboard.png', width: 50, height: 50),),
            Expanded(
              child: Center(child: Text('Users')),
            )
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () { Navigator.of(context).pushNamed("/leave_notification");},
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
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        children: List.generate(6, (index) {
          return Card(
              child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.all(8.0),
                      width: 70,
                      height: 70,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image:
                              new ExactAssetImage('assets/images/hover-3.jpg'),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "Akshay Karetiya",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Text("Web Designer",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)),
                      color: Colors.white,
                      textColor: Colors.black,
                      onPressed: () {},
                      child: Text(
                        "View Profile",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 8, height: 2),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff57D985))),
                          onPressed: () {},
                          color: Color(0xff57D985),
                          textColor: Colors.grey,
                          child: Text("Status", style: TextStyle(fontSize: 14)),
                        ),
                        Container(
                          // margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Approved",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      
                      children: <Widget>[
                        new Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff57D985),
                            ),
                            child:Text("85%")),
                      ],
                    )
                  ],
                )
              ],
            ),
          ));
        }),
      ),
    );
  }
}
