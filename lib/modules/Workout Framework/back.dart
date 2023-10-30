import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class back extends StatefulWidget {
  const back({Key? key}) : super(key: key);

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.black,
      body: body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: new IconButton(
        icon: Icon(Icons.arrow_circle_left_outlined,
          color: Colors.white, size: 34,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text(
        'BACK EXERCISE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: true,
    );
  }

  ListView body() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: SvgPicture.asset('assets/icons/warm-up Info.svg'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 20,
            top: 20,
          ),
          child: Text(
            "Prone pull: 3 sets of 10 reps",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
