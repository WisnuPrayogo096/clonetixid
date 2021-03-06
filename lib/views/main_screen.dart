import 'package:flutter/material.dart';

import 'movies_screen.dart';
import 'cinemas_screen.dart';
import 'tickets_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _cIndex = 0;

  List<Widget> _children = [
    MoviesScreen(),
    CinemasScreen(),
    TicketScreen(),
  ];

  incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _bodyMain(),
    );
  }

  Widget _appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          "2.5K Point",
          style: TextStyle(color: Colors.black, fontSize: 12),
        )),
      ),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("images/logo_dark_beta.png"),
      ),
      backgroundColor: Colors.white,
      elevation: 1,
      centerTitle: true,
      actions: <Widget>[
        Image.asset(
          "images/ico_noti_top_home.png",
          width: 32,
          height: 32,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  Widget _bodyMain() {
    return Scaffold(
      body: Center(child: _children[_cIndex]),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          onTap: incrementTab,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/icon_theater.png",
                  height: 24,
                  width: 24,
                ),
                label: "Movies"),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/icon_cinema_moviedetail.png",
                height: 24,
                width: 24,
              ),
              label: "Cinemas",
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/icon_ticket_unselected.png",
                  height: 24,
                  width: 24,
                ),
                label: "Tickets"),
          ]),
    );
  }
}
