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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          _datePicker(),
          const Padding(
            padding: EdgeInsets.only(bottom: 4.0),
          ),
          SizedBox(
            height: size.height * 0.7,
            child: ListView(
              children: [
                _taskOfTheDayWidget(dayOfTheWeek: 'Friday', date: '13 Mar'),
                _taskOfTheDayWidget(dayOfTheWeek: 'Saturday', date: '14 Mar'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kFabColor2,
        child: const Icon(
          Icons.add,
          size: 32.0,
          color: Color(0xFFE2F4F2),
        ),
      ),
    );
  }

  Widget _taskOfTheDayWidget({
    required String dayOfTheWeek,
    required String date,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: [
          _buildEachDaysTask(
            dayOfTheWeek: dayOfTheWeek,
            date: date,
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 6.0,
            child: _funnyLookingContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildEachDaysTask({
    required String dayOfTheWeek,
    required String date,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                dayOfTheWeek,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 16.0)),
              Text(
                date,
                style: const TextStyle(
                  color: kDayOfTheWeekColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: _buildStepsLine(),
              ),
              const Padding(padding: EdgeInsets.only(right: 8.0)),
              Column(
                children: [
                  _aUsefulRow(
                    firstChild: _buildTimeColumn(
                      time: '09:45 AM',
                      duration: '30min',
                    ),
                    secondChild: _taskContainer(
                      task: 'Get feedback on design system',
                      location: 'Red Corner',
                    ),
                  ),
                  Row(
                    children: [
                      _buildTimeColumn(
                        time: '10:20 AM',
                        duration: '60 min',
                      ),
                      const Padding(padding: EdgeInsets.only(right: 8.0)),
                      _meetingContainer(),
                    ],
                  ),
                  _aUsefulRow(
                    firstChild: _buildTimeColumn(
                      time: '11:40 AM',
                      duration: '30min',
                    ),
                    secondChild: _taskContainer(
                      task: 'Retail concept-legal',
                      location: 'Microsoft Teams',
                    ),
                  ),
                  _aUsefulRow(
                    firstChild: _buildTimeColumn(
                      time: '02:10 AM',
                      duration: '30min',
                    ),
                    secondChild: _taskContainer(
                      task: '1-1 New opportuinities',
                      location: 'Leshaya',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStepsLine() {
    return Column(
      children: [
        _container(
          color: kLightPinkColor,
          child: const Icon(
            Icons.fiber_manual_record,
            size: 15.0,
            color: Color(0xFFCD9E9E),
          ),
        ),
        const SizedBox(
          height: 90.0,
          child: VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Color(0xFF9B9B9B),
          ),
        ),
        _container(
          color: kBlueGradientColor,
          child: const Icon(
            Icons.fiber_manual_record,
            size: 15.0,
            color: Color(0xFF7EA6A6),
          ),
        ),
        const SizedBox(
          height: 80.0,
          child: VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Color(0xFF9B9B9B),
          ),
        ),
        _container(
          color: kLightPinkColor,
          child: const SizedBox.shrink(),
        ),
        const SizedBox(
          height: 60.0,
          child: VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Color(0xFF9B9B9B),
          ),
        ),
        _container(
          color: kLightPinkColor,
          child: const SizedBox.shrink(),
        ),
        const SizedBox(
          height: 50.0,
          child: VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Color(0xFF9B9B9B),
          ),
        ),
        _container(
          color: kLightPinkColor,
          child: const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _container({
    required Widget child,
    required Color color,
  }) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: child,
    );
  }

  Widget _datePicker() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
      decoration: const BoxDecoration(
        color: kLightPinkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  Widget _taskContainer({
    required String task,
    required String location,
  }) {
    return Container(
      width: 223.0,
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 18.0, 12.0),
      margin: const EdgeInsets.only(right: 8.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: kDayOfTheWeekColor,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 3.0)),
          Text(
            location,
            style: const TextStyle(
              color: kDayOfTheWeekColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _meetingContainer() {
    return Container(
      width: 223.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 35.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: ShapeDecoration(
        color: kBlueGradientColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: kBlueGradientColor,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/apple.png',
            height: 40.0,
          ),
          const Padding(padding: EdgeInsets.only(right: 8.0)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Daily meeting',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 3.0)),
              Text(
                'Dark forces room',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _funnyLookingContainer() {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      decoration: const ShapeDecoration(
        color: Colors.transparent,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
          ),
          borderSide: BorderSide(
            color: kDayOfTheWeekColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FunnyContainerChild(
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'ADD APPT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18.0, 8.0, 22.0, 8.0),
            child: Text(
              'BLOCK TIME',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeColumn({
    required String time,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          duration,
          style: const TextStyle(
            color: kDayOfTheWeekColor,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _aUsefulRow({
    required Widget firstChild,
    required Widget secondChild,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          firstChild,
          const Padding(padding: EdgeInsets.only(right: 8.0)),
          secondChild,
        ],
      ),
    );
  }
}
