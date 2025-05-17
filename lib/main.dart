import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbarwithfragment/AccessibilityFregment.dart';
import 'package:tabbarwithfragment/AlarmFregment.dart';
import 'package:tabbarwithfragment/Contact_mailFregment.dart';
import 'package:tabbarwithfragment/HomeFregment.dart';
import 'package:tabbarwithfragment/PersonFregment.dart';
import 'package:tabbarwithfragment/SearchFregment.dart';
import 'package:tabbarwithfragment/SettingsFregment.dart';




main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 8,
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.green,
            title: Text("Tab Bar"),
            bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home),text: "home",),
                  Tab(icon: Icon(Icons.search),text: "search",),
                  Tab(icon: Icon(Icons.settings),text:"settings",),
                  Tab(icon: Icon(Icons.contact_mail),text: "contact_mail",),
                  Tab(icon: Icon(Icons.person),text: "person",),
                  Tab(icon: Icon(Icons.alarm),text: "alarm",),
                  Tab(icon: Icon(Icons.accessibility),text: "accessibility",),
                ]),
          ),
          body: TabBarView(children: [
            HomeFregment(),
            SearchFregment(),
            SettingsFregment(),
            Contact_mailFregment(),
            PersonFregment(),
            AlarmFregment(),
            AccessibilityFregment()

          ]),
        )
    );
  }
}