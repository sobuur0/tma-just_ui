import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';
import 'package:tma_just_ui/widgets/date_details.dart';
import 'package:tma_just_ui/widgets/funny_container_child.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          'Łukasz Samiec',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Column(
        children: [
          _datePicker(),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
          ),
          ListView(
            children: [

            ],
          ),
          Row(
            children: const [
              Text('Friday'),
              Text('13 March'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEachDaysTask() {
    return 
  }

  Widget _buildStepsLine() {
    return Column(
      children: [
        Stepper(steps: [
          Step(title: title, content: content)
        ])
      ],
    );
  }

  Widget _datePicker() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        children: const [
          DateDetails(
            dayOfTheWeek: 'Mon',
            date: '09',
            color: Colors.white,
          ),
          DateDetails(
            dayOfTheWeek: 'Tue',
            date: '10',
            color: Colors.white,
          ),
          DateDetails(
            dayOfTheWeek: 'Wed',
            date: '11',
            color: Colors.white,
          ),
          DateDetails(
            dayOfTheWeek: 'Thu',
            date: '12',
            color: Colors.white,
          ),
          DateDetails(
            dayOfTheWeek: 'Fri',
            date: '13',
            color: Colors.white,
          ),
          DateDetails(
            dayOfTheWeek: 'Sat',
            date: '14',
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _taskContainer() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 8.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 55, 22, 35),
            width: 2.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Get feeback on design system'),
          Padding(padding: EdgeInsets.only(bottom: 8.0)),
          Text('Red Corner'),
        ],
      ),
    );
  }

  Widget _meetingContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      margin: const EdgeInsets.only(right: 8.0),
      decoration: ShapeDecoration(
        color: kBlueGradientColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/apple.png'),
          const Padding(padding: EdgeInsets.only(right: 8.0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Daily meeting'),
              Text('Dark forces room'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _funnyLookingContainer() {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 55, 22, 35),
            width: 2.0,
          ),
        ),
      ),
      child: Row(
        children: [
          FunnyContainerChild(
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text('ADD APPT'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('BLOCK TIME'),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('09:45 AM'),
        Text('30 min'),
      ],
    );
  }
}
