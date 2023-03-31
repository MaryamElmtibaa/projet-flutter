
import 'package:flutter/material.dart';
import 'package:projetflutter/lib/pages/contact_page.dart';
import 'package:projetflutter/lib/pages/experience_page.dart';
import 'package:projetflutter/lib/pages/home_page.dart';
import 'package:projetflutter/lib/pages/portfolio_page.dart';
import 'package:projetflutter/lib/pages/team_page.dart';
import 'package:projetflutter/lib/utils/AppIcons.dart';
import 'package:projetflutter/lib/widgets/navigation_menu_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
   TabController? tabController;
   int selectedMenuIndex = 0;

  @override
  void initSate() {
    super.initState();
    tabController = new TabController(length: 5, vsync: this);
    tabController!.addListener(() {
      setState(() {
        selectedMenuIndex = tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconsize = 25.0;
    return DefaultTabController(
      length: 5,
      child:Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.lime,//indigo
        body: Container(
            margin: EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Image.asset("assets/avtar1.png"),
                      ),
                      NavigationMenu(navHome,
                          height: iconsize,
                          width: iconsize,
                          isSelected: selectedMenuIndex == 0, onClick: () {
                        tabController?.animateTo(0);
                      }),
                      NavigationMenu(navTime,
                          height: iconsize,
                          width: iconsize,
                          isSelected: selectedMenuIndex == 1, onClick: () {
                        tabController!.animateTo(1);
                      }),
                      NavigationMenu(navPortfolio,
                          height: iconsize,
                          width: iconsize,
                          isSelected: selectedMenuIndex == 2, onClick: () {
                        tabController!.animateTo(2);
                      }),
                      NavigationMenu(navGroup,
                          height: iconsize,
                          width: iconsize,
                          isSelected: selectedMenuIndex == 3, onClick: () {
                        tabController!.animateTo(3);
                      }),
                      NavigationMenu(navContact,
                          height: iconsize,
                          width: iconsize,
                          isSelected: selectedMenuIndex == 4, onClick: () {
                        tabController!.animateTo(4);
                      }),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    child: TabBarView(
                       controller: tabController,
                      children: <Widget>[
                        HomePage(),
                        ExperiencePage(),
                        PortfolioPage(),
                        TeamPage(),
                        ContactPage()
                      ],
                    ),
                  ),
                )
              ],
            ))));
  }
}
