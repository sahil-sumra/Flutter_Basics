import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'sahil')));
      print('Home Screen lounching..');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 51, 84, 248),
      child: Center(
        child: Text(
          'MY APP',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    ));
  }
}



/*======================================================= ABOUT =======================================================*/

/**************************************************************************************************************
 *  THIS IS USED TO CREATE A SPLASH SCREEN OF LOGO WHICH IS SHOWN 3 OR 4 SECOND  BEFORE THE HOME PAGE OPENS *
 **************************************************************************************************************/



/**------------------------------------------------------------------------------------------------
 *                                         main.dart
 *------------------------------------------------------------------------------------------------**/

/******************************************************************************************************************************************************************************************
 *                                                                        IMPORT 'PACKAGE:FLUTTER/MATERIAL.DART';                                                                         *
 *                                                                IMPORT 'PACKAGE:FLUTTER_APPLICATION_2/SPLASHPAGE.DART';                                                                 *
 *                                                                                     VOID MAIN() {                                                                                      *
 *                                                                                 RUNAPP(CONST MYAPP());                                                                                 *
 *                                                                                           }                                                                                            *
 *                                                                         CLASS MYAPP EXTENDS STATELESSWIDGET {                                                                          *
 *                                                                               CONST MYAPP({SUPER.KEY});                                                                                *
 *                                                                    // THIS WIDGET IS THE ROOT OF YOUR APPLICATION.                                                                     *
 *                                                                                       @OVERRIDE                                                                                        *
 *                                                                          WIDGET BUILD(BUILDCONTEXT CONTEXT) {                                                                          *
 *                                                                                  RETURN MATERIALAPP(                                                                                   *
 *                                                                                 TITLE: 'FLUTTER DEMO',                                                                                 *
 *                                                                           DEBUGSHOWCHECKEDMODEBANNER: FALSE,                                                                           *
 *                                                                                   THEME: THEMEDATA(                                                                                    *
 *                                                            COLORSCHEME: COLORSCHEME.FROMSEED(SEEDCOLOR: COLORS.DEEPPURPLE),                                                            *
 *                                                                                  USEMATERIAL3: TRUE,                                                                                   *
 *                                                                                           ),                                                                                           *
 *                                                                                  HOME: SPLASHPAGE(),                                                                                   *
 *                                                                                           );                                                                                           *
 *                                                                                           }                                                                                            *
 *                                                                                           }                                                                                            *
 *                                                                       CLASS MYHOMEPAGE EXTENDS STATEFULWIDGET {                                                                        *
 *                                                                  CONST MYHOMEPAGE({SUPER.KEY, REQUIRED THIS.TITLE});                                                                   *
 *                                                                                  FINAL STRING TITLE;                                                                                   *
 *                                                                                       @OVERRIDE                                                                                        *
 *                                                                 STATE<MYHOMEPAGE> CREATESTATE() => _MYHOMEPAGESTATE();                                                                 *
 *                                                                                           }                                                                                            *
 *                                                                   CLASS _MYHOMEPAGESTATE EXTENDS STATE<MYHOMEPAGE> {                                                                   *
 *                                                                                       @OVERRIDE                                                                                        *
 *                                                                          WIDGET BUILD(BUILDCONTEXT CONTEXT) {                                                                          *
 *                                                                                    RETURN SCAFFOLD(                                                                                    *
 *                                                                                    APPBAR: APPBAR(                                                                                     *
 *                                                             BACKGROUNDCOLOR: THEME.OF(CONTEXT).COLORSCHEME.INVERSEPRIMARY,                                                             *
 *                                                                               TITLE: TEXT(WIDGET.TITLE),                                                                               *
 *                                                                                           ),                                                                                           *
 * /************************************************************************************************************************************************************************************* *
 * * CONSTRAINEDBOX: THE CONSTRAINEDBOX WIDGET IMPOSES ADDITIONAL CONSTRAINTS ON ITS CHILD WIDGET. YOU CAN SPECIFY MINIMUM AND MAXIMUM WIDTH AND HEIGHT CONSTRAINTS USING THIS WIDGET. *  *
 * *************************************************************************************************************************************************************************************/ *
 *                                                                                 BODY: CONSTRAINEDBOX(                                                                                  *
 *                                                                              CONSTRAINTS: BOXCONSTRAINTS(                                                                              *
 *                                                                                     MAXWIDTH: 100,                                                                                     *
 *                                                                                    MAXHEIGHT: 100,                                                                                     *
 *                                                                                           ),                                                                                           *
 *                                                                                   CHILD: CONTAINER(                                                                                    *
 *                                                                                COLOR: COLORS.REDACCENT,                                                                                *
 *                                                                                      CHILD: TEXT(                                                                                      *
 *                                                                                     'GO TO HELL',                                                                                      *
 *                                                              STYLE: TEXTSTYLE(FONTSIZE: 21, OVERFLOW: TEXTOVERFLOW.FADE),                                                              *
 *                                                                                           ),                                                                                           *
 *                                                                                          )));                                                                                          *
 *                                                                                           }                                                                                            *
 *                                                                                           }                                                                                            *
 ******************************************************************************************************************************************************************************************/