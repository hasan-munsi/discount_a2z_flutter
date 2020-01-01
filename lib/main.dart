import 'package:flutter/material.dart';
import 'MyWebView.dart';

void main() => runApp(
      MaterialApp(
        home: DiscountHome(),
        routes: <String, WidgetBuilder>{
          "/hospital": (BuildContext context) => CustomWebViewPage('hospital/'),
          "/education": (BuildContext context) =>
              CustomWebViewPage('education/'),
          "/gents": (BuildContext context) =>
              CustomWebViewPage('gents-collection/'),
          "/ladies": (BuildContext context) =>
              CustomWebViewPage('ladies-collection/'),
          "/honda": (BuildContext context) =>
              CustomWebViewPage('motorcycle-showroom/'),
          "/mobile": (BuildContext context) =>
              CustomWebViewPage('mobile-showroom/'),
          "/pc": (BuildContext context) =>
              CustomWebViewPage('computer-showroom/'),
          "/pharmacy": (BuildContext context) => CustomWebViewPage('pharmacy/'),
          "/elect": (BuildContext context) =>
              CustomWebViewPage('electronics-showroom/'),
          "/it": (BuildContext context) => CustomWebViewPage('it-firm/'),
          "/hotel": (BuildContext context) =>
              CustomWebViewPage('hotel_resort/'),
          "/travel": (BuildContext context) =>
              CustomWebViewPage('travel-agency/'),
        },
      ),
    );

class DiscountHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discount A2Z",
          style: TextStyle(color: Color(0xFFFFEC00)),
        ),
        elevation: 10.0,
        backgroundColor: Color(0xFF006626),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFF008D36),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.airline_seat_flat,
                          size: 50.0,
                        ),
                        name: "Hospital",
                        routeName: '/hospital',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.school,
                          size: 50.0,
                        ),
                        name: "Education",
                        routeName: '/education',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.shopping_basket,
                          size: 50.0,
                        ),
                        name: "Gent's Showroom",
                        routeName: '/gents',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 50.0,
                        ),
                        name: "Ladies Showroom",
                        routeName: '/ladies',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.motorcycle,
                          size: 50.0,
                        ),
                        name: "Honda Showroom",
                        routeName: 'honda',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.phone_android,
                          size: 50.0,
                        ),
                        name: "Mobile Showroom",
                        routeName: '/mobile',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.laptop_chromebook,
                          size: 50.0,
                        ),
                        name: "Laptop/Computer",
                        routeName: '/pc',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.local_hospital,
                          size: 50.0,
                        ),
                        name: "Pharmacy",
                        routeName: '/pharmacy',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.power,
                          size: 50.0,
                        ),
                        name: "Electronics Showroom",
                        routeName: '/elect',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.desktop_mac,
                          size: 50.0,
                        ),
                        name: "IT Farm",
                        routeName: '/it',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.home,
                          size: 50.0,
                        ),
                        name: "Hotel/Resorts",
                        routeName: '/hotel',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        icon: Icon(
                          Icons.train,
                          size: 50.0,
                        ),
                        name: "Travel Agency",
                        routeName: '/travel',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  MenuCard(
      {@required this.icon, @required this.name, @required this.routeName});

  final Icon icon;
  final String name;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: icon,
            ),
            Expanded(
              flex: 1,
              child: Text(
                name,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18.0,
                  fontFamily: "YanoneKaffeesatz",
                  letterSpacing: 1.0,
                ),
              ),
            )
          ],
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        },
      ),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
