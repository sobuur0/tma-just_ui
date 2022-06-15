import 'package:flutter/material.dart';
import 'package:tma_just_ui/widgets/text_field.dart';

class NewMeetingPage extends StatefulWidget {
  const NewMeetingPage({Key? key}) : super(key: key);

  @override
  State<NewMeetingPage> createState() => _NewMeetingPageState();
}

class _NewMeetingPageState extends State<NewMeetingPage> {
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 16.0)),
          ThisTextField(
            textController: _aboutController,
            validator: (value) {},
            keyboardType: TextInputType.text,
          ),
          const Padding(padding: EdgeInsets.only(bottom: 16.0)),
          ThisTextField(
            textController: _placeController,
            validator: (value) {},
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
