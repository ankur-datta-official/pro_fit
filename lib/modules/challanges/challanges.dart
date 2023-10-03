import 'package:flutter/material.dart';

class ChallangesPage extends StatelessWidget {
   ChallangesPage({Key? key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1e),
        title: Center(
          child: Text("DAILY CHALLENGES",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(children:[ Image.asset("assets/images/challanges.jpeg",fit: BoxFit.cover,),
              //Image.asset('assets/sample1.jpg', color: Colors.white.withOpacity(0.8), colorBlendMode: BlendMode.modulate, )
              ]),
            ),
            SizedBox(height: 20,),
            Container(
              child: Center(child: Text("Complete Task",style: TextStyle(
                  fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30)),),
              SizedBox(height: 10,),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: taskTitles.length, // Use the length of your lists
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(taskTitles[index],style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.yellow)), // Use taskTitles list
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 5.0,),
                      child: Text(taskSubtitles[index],style: TextStyle(fontSize: 17,color: Colors.white),),
                    ), // Use taskSubtitles list
                  );
                },
              ),
            ),
           
          ],
        ),
      ),
    );
  }
    final List<String> taskTitles = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5",];
  final List<String> taskSubtitles = [
    "Warm for 3-5 minutes, 30 minutes of cardio (running, cycling, or elliptical)",
    " Upper Body Strength",
    "Rest day or practice yoga to improve flexibility and reduce stress.",
    "Lower Body Strength",
    "Full-Body Circuit",
    "Full-Body Circuit",
  ];

}
