import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sound) {
    final player = AudioCache();
    player.play('$sound.mp3');
  }

  Expanded buildkey({required String pic, required int soundno}) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              playsound(soundno);
            },
            child: CircleAvatar(
              radius: 68,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/$pic.jpg'),
                radius: 65,
              ),
            ),
          ),
          Text('$pic',
          style: TextStyle(
            color: Colors.yellowAccent.shade700,
            fontSize: 18.00,
            fontFamily: 'Carter',
          ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade700,
          foregroundColor: Colors.white,
          title: Text('StrexSiu',style: TextStyle(fontFamily: 'Carter'),),
        ),
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildkey(pic: 'CR7', soundno: 7),
                ],
              ),
              Row(
                children: <Widget>[
                  buildkey(pic: 'Donald Jr Trump', soundno: 1),
                  buildkey(pic: 'Conor Mcgregor', soundno: 2),
                ],
              ),
              Row(
                children: <Widget>[
                  buildkey(pic: 'Mike Tyson', soundno: 5),
                  buildkey(pic: 'Khabib N.', soundno: 4),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
