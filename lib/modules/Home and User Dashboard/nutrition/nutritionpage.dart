import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Nutritional Foods")),
          backgroundColor: Color(0xff1d1a1b),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Breakfast'),
              Tab(text: 'Lunch'),
              Tab(text: 'Dinner'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Breakfast(),
            Lunch(),
            DinnerContent(),
          ],
        ),
      ),
    );
  }
  
  Breakfast() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),

    );
  }
  
  Lunch() {
    return Container();
  }
  
  DinnerContent() {
    return Container();
  }
}
