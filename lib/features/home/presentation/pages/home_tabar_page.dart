import 'package:flutter/material.dart';
import 'package:tiendo_ui/widgets/app_bar.dart';
import 'package:tiendo_ui/widgets/product.dart';

class HomeTabarPage extends StatefulWidget {
  @override
  _HomeTabarPageState createState() => _HomeTabarPageState();
}

class _HomeTabarPageState extends State<HomeTabarPage> {
  //

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int ontapselected = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            setState(() {
              ontapselected = tabController.index;
            });
          }
        });
        return Scaffold(
          appBar: AppBar(
            title: TopBar(),
            backgroundColor: Colors.white,
            bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.red,
              isScrollable: true,
              tabs: [
                Tabaritem('Favoritos', 0),
                Tabaritem('Explorer', 1),
                Tabaritem('Categories', 2),
                Tabaritem('Magasins', 3),
                Tabaritem('Centres Commerciaux', 4),
                Tabaritem('Nouveautes', 5),
              ],
            ),
          ),
          body:  TabBarView(
            children: <Widget>[
              Center(
                child: Text('It\'s cloudy here'),
              ),
              Container(
                color: Colors.pink,
                child: ProductCard()),
              Center(
                child: Text('It\'s sunny here'),
              ),
              Center(
                child: Text('It\'s sunny here'),
              ),
              Center(
                child: Text('It\'s sunny here'),
              ),
              Center(
                child: Text('It\'s sunny here'),
              ),
            ],
          ),
          
        );
      }),
    );
  }

  Container Tabaritem(String text, int index) {
    return Container(
      height: 25.0,
      child: Text(
        text,
        style: TextStyle(
          color: ontapselected == index ? Colors.red[700] : Colors.grey[500],
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
