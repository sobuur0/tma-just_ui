
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  double _sliderValue = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Svg('images/happy_bro.svg'),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 40.0, 16.0, 0.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.xmark,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 18.0)),
              Text(
                'How was\nyour Experience?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Slider(
                  min: 0.0,
                  max: 5.0,
                  activeColor: Colors.grey.shade500,
                  inactiveColor: Colors.grey.shade200,
                  thumbColor: Colors.grey.shade900,
                  value: _sliderValue,
                  divisions: 5,
                  onChanged: (newValue) {
                    setState(() {
                      _sliderValue = newValue;
                    });
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 45.0)),
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
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 24.0)),
            ],
          ),
        ],
      ),
    );
  }
}
