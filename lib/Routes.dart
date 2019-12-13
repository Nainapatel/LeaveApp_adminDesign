import 'package:flutter/material.dart';
import 'package:leaveapp/screens/dashboard.dart';
import 'package:leaveapp/screens/leave_tracking.dart';
import 'package:leaveapp/screens/leave_notification.dart';
import 'package:leaveapp/screens/leave_user.dart';
import 'package:leaveapp/screens/leave_report.dart';
import 'package:leaveapp/screens/admin_profile.dart';
import 'package:leaveapp/screens/login.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/dashboard": (BuildContext context) => new DashboardScreen(),
    "/leave_tracking": (BuildContext context) => new LeaveTrackingScreen(),
    "/leave_notification": (BuildContext context) => new LeaveNotificationScreen(),
    "/leave_user": (BuildContext context) => new LeaveUserScreen(),
    "/leave_report": (BuildContext context) => new LeaveReportScreen(),
    "/admin_profile": (BuildContext context) => new AdminProfileScreen(),
    "/login": (BuildContext context) => new LoginScreen(),

  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Color(0xff01023F),
      ),
      routes: routes,
    ));
  }
}
