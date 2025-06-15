import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/components/mysliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    //initialize the tab controller
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: tabController),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25.0,
                  endIndent: 25.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //current location
                MyCurrentLocation(),
                //description
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Text('1st Tab Item $index'),
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Text('2nd Tab Item $index'),
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Text('3rd Tab Item $index'),
            ),
          ],
        ),
      ),
    );
  }
}
