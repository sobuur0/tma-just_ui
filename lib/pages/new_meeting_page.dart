import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';
import 'package:tma_just_ui/widgets/date_details.dart';
import 'package:tma_just_ui/widgets/funny_container_child.dart';
import 'package:tma_just_ui/widgets/text_field.dart';

class NewMeetingPage extends StatefulWidget {
  const NewMeetingPage({Key? key}) : super(key: key);

  @override
  State<NewMeetingPage> createState() => _NewMeetingPageState();
}

class _NewMeetingPageState extends State<NewMeetingPage> {
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();

  late bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'New meeting',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 16.0)),
          ThisTextField(
            textController: _aboutController,
            // validator: (value) {},
            keyboardType: TextInputType.text,
            hint: 'About',
          ),
          const Padding(padding: EdgeInsets.only(bottom: 16.0)),
          ThisTextField(
            textController: _placeController,
            // validator: (value) {},
            keyboardType: TextInputType.text,
            trailing: const Icon(Icons.location_on),
            hint: 'Place',
          ),
          const Padding(padding: EdgeInsets.only(bottom: 24.0)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Invite',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 16.0)),
          SizedBox(
            height: size.height * 0.17,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0),
              children: [
                _inviteNewMember(
                    avatarUrl: 'images/wale.jpg', name: 'Wale Tambo'),
                _inviteNewMember(
                    avatarUrl: 'images/felicia.jpg', name: 'Felicia Chula'),
                _inviteNewMember(
                    avatarUrl: 'images/dami.jpg', name: 'Dami miAmor'),
                _inviteNewMember(
                    avatarUrl: 'images/jim.jpg', name: 'Jim Okawo '),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 32.0)),
          _datePicker(size),
        ],
      ),
    );
  }

  Widget _inviteNewMember({
    required String avatarUrl,
    required String name,
  }) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          margin: const EdgeInsets.only(right: 12.0),
          height: 120.0,
          width: 100.0,
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
            children: [
              Image.asset(
                avatarUrl,
                height: 60.0,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 12.0)),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(34.0, 100.0, 16.0, 0.0),
          child: Visibility(
            visible: name == 'Wale Tambo',
            child: _circleWithIcon(),
          ),
        ),
      ],
    );
  }

  Widget _circleWithIcon() {
    return Container(
      height: 50.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }

  Widget _datePicker(Size size) {
    return Container(
      height: size.height * 0.435,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
      decoration: const BoxDecoration(
        color: kLightPinkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _dateRow(),
          const Padding(padding: EdgeInsets.only(bottom: 30.0)),
          const Text(
            'Available Time',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 24.0)),
          SizedBox(
            height: 38.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FunnyContainerChild(
                  padding: 12.0,
                  child: Text(
                    '12:00 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 18.0)),
                FunnyContainerChild(
                  padding: 12.0,
                  mainColor: Colors.black,
                  outerColor: Colors.black,
                  child: Text(
                    '12:30 AM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 18.0)),
                FunnyContainerChild(
                  padding: 12.0,
                  child: Text(
                    '13:00 PM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 18.0)),
                FunnyContainerChild(
                  padding: 12.0,
                  child: Text(
                    '13:30 PM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 48.0)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                fixedSize: const Size.fromHeight(56.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dateRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_back_ios),
        DateDetails(
          leftPadding: 0.0,
          dayOfTheWeek: 'Mon',
          date: '09',
          color: kLightPinkColor,
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
        ),
        DateDetails(
          leftPadding: 14.0,
          dayOfTheWeek: 'Tue',
          date: '10',
          color: Colors.white,
          dotColor: Colors.black,
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
        ),
        DateDetails(
          leftPadding: 0.0,
          dayOfTheWeek: 'Wed',
          date: '11',
          color: kLightPinkColor,
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
        ),
        DateDetails(
          leftPadding: 0.0,
          dayOfTheWeek: 'Thu',
          date: '12',
          color: kLightPinkColor,
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
        ),
        DateDetails(
          leftPadding: 0.0,
          dayOfTheWeek: 'Fri',
          date: '13',
          color: kLightPinkColor,
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
