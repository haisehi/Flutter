import 'package:flutter/material.dart';

class learnFlutterPage extends StatefulWidget {
  const learnFlutterPage({super.key});

  @override
  State<learnFlutterPage> createState() => _learnFlutterPageState();
}

class _learnFlutterPageState extends State<learnFlutterPage> {
  bool isSwitch = false;
  bool isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/jinx.jpg'),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color.fromARGB(255, 3, 7, 241),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Color.fromARGB(255, 115, 154, 202),
              child: const Center(
                child: Text(
                  'This is Text Widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outline Button');
              },
              child: Text('Outline Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 244, 0, 0),
                  ),
                  Text('Row widgets'),
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 244, 0, 0),
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool!;
                  });
                }),
            Image.network(
                'https://images.saatchiart.com/saatchi/348441/art/9620489/8683589-RLPRHWXV-6.jpg'),
          ],
        ),
      ),
    );
  }
}
