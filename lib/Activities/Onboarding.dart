import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:life_line/Activities/Home.dart';


class Onboarding extends StatefulWidget{
  @override
  State createState() => SplashScreenState();

}

class SplashScreenState extends State<Onboarding>{

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('assets/images/jsearch.png'),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Get access to latest job on your stack',
          ),
        ),
        title: Text(
          'Job Alert',),
        textStyle: TextStyle( color: Colors.white,fontSize: 10.0),
        mainImage: Image.asset(
          'assets/images/jobsearch.png',
          height: 400.0,
          width: 400.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/images/support.png',
      body: Text(
        'Get 24/7 customer support',
      ),
      title: Text('24/7 support'),
      mainImage: Image.asset(
        'assets/images/aisupport.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle( color: Colors.white,fontSize: 10.0),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/images/realon.png',
      body: Text(
        'Get real time job updates you on the Go',
      ),
      title: Text('Real time Job updates'),
      mainImage: Image.asset(
        'assets/images/updates.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle( color: Colors.white,fontSize: 10.0),
    ),
  ];

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ),
    ) ;

  }


}