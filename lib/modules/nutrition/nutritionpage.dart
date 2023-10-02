import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(Icons.arrow_circle_left_outlined,
              color: Colors.white, size: 34,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title:  Center(
            child: Text("NUTRITION",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
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
