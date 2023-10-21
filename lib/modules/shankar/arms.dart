import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class arms extends StatelessWidget {
  const arms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.black,
      body: body(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: button(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'ARMS EXERCISE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 0.0, //to remove the shadow of appbar
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
        ),
      ),
    );
  }

  FloatingActionButton button() {
    return FloatingActionButton.extended(
      onPressed: () {},
      backgroundColor: const Color(0xFFD0FD3E),
      tooltip: 'Playlist is Started.',
      elevation: 20,
      label: const Text(
        'Start Exercise',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }

  ListView body() {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 50,
          ),
          child: Text(
            'simple arms exercise',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFD0FD3E),
              fontSize: 15,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
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
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF2C2C2E),
            ),
            child: Row(
              children: [
                Container(
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/arms.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 1,
                    ),
                    child: Text(
                      '1. Push-up: 3 sets of 10 reps',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF2C2C2E),
            ),
            child: Row(
              children: [
                Container(
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/arms.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 1,
                    ),
                    child: Text(
                      '2. Triceps dip: 3 sets of 12 reps',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xFF2C2C2E),
            ),
            child: Row(
              children: [
                Container(
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/arms.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 1,
                    ),
                    child: Text(
                      '3. Plank tap: 3 sets of 15-20 reps',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
