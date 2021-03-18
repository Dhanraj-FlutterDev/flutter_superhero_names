import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_hero/super_hero.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: DemoApp(),
));


class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {


   String randomName = SuperHero.random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.withOpacity(0.3),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Text(randomName,style: GoogleFonts.acme(
                    fontSize: 70,
                  ))
                ),
                shadowColor: Colors.blueAccent.shade700,
              ),
              SizedBox(height: 60,),
              RaisedButton(
                color: Colors.blueAccent.shade700,
                  child: Text('Change Hero',style: TextStyle(color: Colors.white),),
                  onPressed: (){
                  setState(() {
                    randomName = SuperHero.random();
                  });
                  }
              )
            ],
          ),
        ),
    );
  }
}

















