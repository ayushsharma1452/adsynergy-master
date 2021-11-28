import 'package:ad_synergy/pages/home/screens/stats.dart';
import 'package:ad_synergy/pages/home/profile.dart';
import 'package:ad_synergy/pages/home/screens/ads.dart';
import 'package:ad_synergy/pages/home/screens/extra.dart';
import 'package:ad_synergy/pages/home/screens/placement.dart';
import 'package:ad_synergy/pages/home/screens/publication.dart';
import 'package:ad_synergy/pages/home/screens/swap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'advertiser/ads.dart';
import 'advertiser/placements.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => new _HomePageState();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  String _userType = 'Publisher';
  bool _searching = false;
  var _listItems = [];
  var listPublisherItems = [
    {
      "title": 'Publications',
      "icon": Icons.publish,
      "onPressed": Publication()
    },
    {
      "title": 'Slots',
      "icon": Icons.stacked_line_chart,
      "onPressed": ExtraPage()
    },
    {
      "title": 'Placements',
      "icon": Icons.location_city,
      "onPressed": Placement()
    },
    {
      "title": 'Ads',
      "icon": Icons.card_membership,
      "onPressed": AdsPage()
    },
    {
      "title": 'Stats',
      "icon": Icons.data_usage,
      "onPressed": ChartListView(
        items: List<ListItem>.generate(1,
              (i) => HeadingItem(),
        ),)
    },
    {
      "title": 'Inventory',
      "icon": Icons.inventory,
      "onPressed": ExtraPage()
    },
    {
      "title": 'ROI',
      "icon": Icons.waterfall_chart,
      "onPressed": ExtraPage()
    }
  ];
  var listAdvertiserItems = [
    {
      "title": 'Products',
      "icon": Icons.storefront,
      "onPressed": () => print('Products')
    },
    {
      "title": 'Ads',
      "icon": Icons.card_membership,
      "onPressed": () => AdvertisementAdsPage()
    },
    {
      "title": 'Campaigns',
      "icon": Icons.campaign,
      "onPressed": () => print('Campaigns')
    },
    {
      "title": 'Placements',
      "icon": Icons.location_city,
      "onPressed": () => AdvertisementPlacement()
    },
    {
      "title": 'Stats',
      "icon": Icons.data_usage,
      "onPressed": ChartListView(
        items: List<ListItem>.generate(1,
              (i) => HeadingItem(),
        ),)
    },
    {
      "title": 'ROI',
      "icon": Icons.waterfall_chart,
      "onPressed": () => ExtraPage()
    },
  ];

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),

    OfferScreen(),
    MessageScreen(),
    SwapScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void changeUserType(String type) {
    setState(() {
      _userType = type;
    });
    switch (type) {
      case 'Publisher':
        {
          setState(() {
            _listItems = listPublisherItems;
          });
        }
        break;
      case 'Advertiser':
        {
          setState(() {
            _listItems = listAdvertiserItems;
          });
        }
        break;
      default:
        {}
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff5ac18e),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () => widget.scaffoldKey.currentState.openDrawer(),
        ),
        title: Center(
            child: SearchBar(
              isSearching: _searching,
            )),
        actions: <Widget>[
          IconButton(
            icon: _searching
                ? Icon(Icons.clear, color: Colors.white)
                : Icon(Icons.search, color: Colors.white),
            onPressed: () {
              setState(() {
                _searching = !_searching;
              });
            },
            tooltip: 'Search',
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            onSelected: (val) => handleClick(val, context),
            itemBuilder: (BuildContext context) {
              return {
                'Help',
                'Feedback',
                'Logout',
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: getDrawer(),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Color(0xff5ac18e),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
            backgroundColor: Color(0xff5ac18e),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
            backgroundColor: Color(0xff5ac18e),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horizontal_circle_outlined),
            label: 'Swap',
            backgroundColor: Color(0xff5ac18e),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profiles',
            backgroundColor: Color(0xff5ac18e),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedLabelStyle:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        selectedLabelStyle:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        selectedItemColor: Color(0xff5ac18e),
        onTap: _onItemTapped,
      ),
    );
  }

  void _openPopup(context) {
    Alert(
        context: context,
        title: "FEEDBACK",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.feedback),
                labelText: 'Your feedback',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email for respones',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Send",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )
        ]).show();
  }

  void handleClick(String value, BuildContext context) {
    switch (value) {
      case 'Help':
        widget.scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text(
              'Help Selected',
            ),
          ),
        );
        break;
      case 'Feedback':
        _openPopup(context);
        break;
      case 'Logout':
        widget.scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text(
              'Logout Selected',
            ),
          ),
        );
        break;
    }
  }

  List<Widget> getDrawer() {
    List<Widget> drawer = [];
    drawer.add(Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff5ac18e),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/user.png',
                            width: 86,
                            height: 86,
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Tony Stark',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'tonystark@gmail.com',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          )),
                    ]),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: const Color(0xffe0f2f1),
                  ),
                  child: DropdownButton(
                    value: _userType,
                    icon: const Icon(Icons.arrow_drop_down),
                    onChanged: (String newValue) => changeUserType(newValue),
                    underline: Container(height: 0),
                    items: <String>['Publisher', 'Advertiser']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          )),
    ));
    if (_listItems.length == 0) {
      _listItems = listPublisherItems;
    }
    for (var i = 0; i < _listItems.length; i++) {
      drawer.add(Card(
          shadowColor: Colors.white,
          child: ListTile(
              title: Text(_listItems[i]["title"]),
              leading: Icon(_listItems[i]["icon"]),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => _listItems[i]["onPressed"])))));
    }

    return drawer;
  }
}

class SearchBar extends StatelessWidget {
  final bool isSearching;

  SearchBar({@required this.isSearching});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimateExpansion(
          animate: !isSearching,
          axisAlignment: 1.0,
          child: Text('', style: TextStyle(color: Colors.white)),
        ),
        AnimateExpansion(
          animate: isSearching,
          axisAlignment: -1.0,
          child: Search(),
        ),
      ],
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search for...',
        hintStyle: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
    );
  }
}

class AnimateExpansion extends StatefulWidget {
  final Widget child;
  final bool animate;
  final double axisAlignment;

  AnimateExpansion({
    this.animate = false,
    this.axisAlignment,
    this.child,
  });

  @override
  _AnimateExpansionState createState() => _AnimateExpansionState();
}

class _AnimateExpansionState extends State<AnimateExpansion>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  void prepareAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInCubic,
      reverseCurve: Curves.easeOutCubic,
    );
  }

  void _toggle() {
    if (widget.animate) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _toggle();
  }

  @override
  void didUpdateWidget(AnimateExpansion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _toggle();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axis: Axis.horizontal,
        axisAlignment: -1.0,
        sizeFactor: _animation,
        child: widget.child);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Offer')),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Message')),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('No publications have been added.')),
    );
  }
}
