import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 243, 107, 193),
      title: Text(
        'ماهان غلام پور',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
        ),
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/hoshino.jpg'),
          radius: 60,
        ),
        SizedBox(height: 15),
        Text(
          'ماهانم یه گیمر و ویب خسته',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Text(
          'از کمک کردن به دیگران خوشم میاد و به تازگی عاشق فلاتر شدم . علاقه خاصی به  دختر های انیمه ای دارم',
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12,
        ),
        _getRowIcons(),
        SizedBox(height: 12.0),
        _getCard(),
        SizedBox(height: 12),
        _getResume(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      spacing: 7,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: const Color.fromARGB(255, 243, 107, 193),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: const Color.fromARGB(255, 243, 107, 193),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareWhatsapp),
          color: const Color.fromARGB(255, 243, 107, 193),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: const Color.fromARGB(255, 243, 107, 193),
        ),
      ],
    );
  }

  Widget _getCard() {
    var labels = ['GIRL_1', 'GIRL_2', 'GIRL_3', 'GIRL_4', 'DARK'];
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skills in labels)
          Card(
            elevation: 7,
            shadowColor: const Color.fromARGB(255, 243, 107, 193),
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image(
                    image: AssetImage('images/$skills.png'),
                    width: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skills'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      color: Colors.pink[100],
      child: Column(
        children: [
          Text(
            ':سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          getHistoryColumn(),
        ],
      ),
    );
  }

  Widget getHistoryColumn() {
    var list = [
      'متن تستی میباشد و هیچ هدف دیگری ندارد',
      'متن تستی میباشد و هیچونه هدف دیگری ندارد',
      'متن تستی میباشد و هیچونه هدف دیگری ندارد',
      'متن تستی میباشد و هیچونه هدف دیگری ندارد',
      'متن تستی میباشد و هیچونه هدف دیگری ندارد',
      'متن تستی میباشد و هیچونه هدف دیگری ندارد'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in list)
          Text(
            '$title',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}
