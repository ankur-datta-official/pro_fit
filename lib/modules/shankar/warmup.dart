import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class warmup extends StatelessWidget {
  const warmup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floating action button.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFFD0FD3E),
        tooltip: 'Playlist is Started.',
        elevation: 20,
        label: const Text(
          'Start Warm-Up',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      // silver appbar
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              floating: true,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                title: const Text(
                  "Warm-Up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 109, 102, 102),
                    fontSize: 20,
                  ),
                ),
                background: Image.asset(
                  "assets/images/Warm-up.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Text(
                'simple warmup exercise',
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
                          image: AssetImage('images/chest.png'),
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
                          '1. Shoulder rolls',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 80,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    )
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
                          image: AssetImage('images/chest.png'),
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
                          '2. Head circles',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 80,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    )
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
                          image: AssetImage('images/chest.png'),
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
                          '3. Arm swings',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 80,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
