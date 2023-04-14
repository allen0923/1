import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  AppHome({this.locationWeather});
  final locationWeather;
  @override
  State<StatefulWidget> createState() {
 
    return _HomePageState();
  }
}

class _HomePageState extends State<AppHome>{

  int _currentIndex=0;
   List<Widget> _widgets = [];
  @override
  void initState() {
    super.initState();
   // _widgets.add(LocationScreen(locationWeather: widget.locationWeather,));
   // _widgets.add(NewsPage());
   // _widgets.add(MyPage());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _widgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),label: "Today's Weather"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),label: "Today's Goal"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "About me"
          )
        ],
        currentIndex: _currentIndex,
        onTap: _itemTapped,
      ),
    );
  }
  void _itemTapped (int index){
    setState(() {
      _currentIndex=index;
    });
  }
}
