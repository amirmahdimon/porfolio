import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(runApplic());
}

class runApplic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return application();
  }

  Widget application() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: _getMainBody(),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.red,
      title: Align(
        alignment: Alignment.center,
        child: Text(
          'امیرمهدی منتظری',
        ),
      ),
    );
  }

  Widget _getMainBody() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/monty.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          'یه برنامه نویس',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'عاشق برنامه نویسی با فلاتر',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5),
        _getRowIcons(),
        SizedBox(height: 12),
        _getSkill(),
        SizedBox(height: 12),
        _getResume(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey[700],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: Colors.blueGrey[700],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.blueGrey[700],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey[700],
        ),
      ],
    );
  }
}

Widget _getResume() {
  var list = [
    'برنامه نویس پایتون',
    'دوره cs50x هاروارد',
    'برنامه نویس فرانت اند فلاتر',
    ' کار با فتوشاپ و پریمیر و داوینچی ریزالو',
    'کار با ابزار های 3d',
  ];
  return Wrap(children: [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Wrap(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                for (var my in list)
                  Text(
                    '$my',
                    textDirection: TextDirection.rtl,
                  )
              ],
            ),
          ])
        ],
      ),
    ),
  ]);
}

Widget _getSkill() {
  var list = ['flutter', 'Premiere', 'AI', 'dart', 'python'];
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      for (var skill in list)
        Card(
          elevation: 6,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Container(
                height: 80,
                child: Image(image: AssetImage('images/$skill.png'), width: 60),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('$skill'),
              ),
            ],
          ),
        ),
    ],
  );
}
