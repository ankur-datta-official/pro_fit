import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class warmup extends StatefulWidget {
  const warmup({Key? key}) : super(key: key);

  @override
  _WarmupPageState createState() => _WarmupPageState();
}

class _WarmupPageState extends State<warmup> {
  int _secondsRemaining = 300; // Initial time in seconds (5 minutes)
  late ValueNotifier<int> _timerNotifier;
  late Timer _timer;
  bool _isTimerRunning = true;

  @override
  void initState() {
    super.initState();
    _timerNotifier = ValueNotifier<int>(_secondsRemaining);
  }

  void _startTimer() {
    if (!_isTimerRunning) {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (_secondsRemaining <= 0) {
          timer.cancel();
          _isTimerRunning = false;
        } else {
          _secondsRemaining--;
          _timerNotifier.value = _secondsRemaining;
        }
      });
      _isTimerRunning = true;
    }
  }

  void _stopTimer() {
    if (_isTimerRunning) {
      _timer.cancel();
      _isTimerRunning = false;
    }
  }

  @override
  void dispose() {
    if (_isTimerRunning) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.black,
      body: buildBody(),
    );
  }

// ... (rest of your code remains the same)

  AppBar buildAppBar() {
    return AppBar(
      leading: new IconButton(
        icon: Icon(Icons.arrow_circle_left_outlined,
          color: Colors.white, size: 34,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text(
        'WARM-UP EXERCISE',
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

  Widget buildBody() {
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
              image: DecorationImage(
                image: AssetImage('assets/images/Warm-up.png'),
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
        Center(
          child: Text(
            "Goblet squat: 3 sets of 10 reps",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 15,),
        Center(
          child: ValueListenableBuilder<int>(
            valueListenable: _timerNotifier,
            builder: (context, value, child) {
              int minutes = value ~/ 60;
              int seconds = value % 60;
              return Text(
                '$minutes:${seconds.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              if (_isTimerRunning) {
                _stopTimer();
              } else {
                _startTimer();
              }
            },
            child: Text(_isTimerRunning ? 'Start' : 'Pause'),
          ),
        ),
      ],
    );
  }

}
