import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.black,
      body: body(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Insight',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xff000000),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/Group.svg',
            height: 35,
            width: 35,
          ),
        ),
      ),
    );
  }

  ListView body() {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        const Row(
          children: [
            Text(
              '29, ',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  'September',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        '2023 ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const LinearProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          ' Daily Progress',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: LinearPercentIndicator(
            width: 400,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30,
            // leading: const Text("left content"),
            // trailing: const Text("right content"),
            percent: 0.9,
            center: const Text(
              "Active Calories",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            progressColor: Colors.blue[800],

            backgroundColor: Colors.white10,
            barRadius: const Radius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: LinearPercentIndicator(
            width: 400,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30,
            // leading: const Text("left content"),
            // trailing: const Text("right content"),
            percent: 0.7,
            center: const Text(
              "Steps",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            progressColor: Colors.yellow[800],

            backgroundColor: Colors.white10,
            barRadius: const Radius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: LinearPercentIndicator(
            width: 400,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30,
            // leading: const Text("left content"),
            // trailing: const Text("right content"),
            percent: 0.5,
            center: const Text(
              "Times",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            progressColor: Colors.green,

            backgroundColor: Colors.white10,
            barRadius: const Radius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: LinearPercentIndicator(
            width: 400,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30,
            // leading: const Text("left content"),
            // trailing: const Text("right content"),
            percent: 0.4,
            center: const Text(
              "Heart",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            progressColor: Colors.red,

            backgroundColor: Colors.white10,
            barRadius: const Radius.circular(20),
          ),
        ),
      ],
    );
  }
}
