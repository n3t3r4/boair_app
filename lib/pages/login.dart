import 'package:boair/pages/userPage.dart';
import 'package:flutter/material.dart';

class LoguinPage extends StatefulWidget{

@override
  State<LoguinPage> createState() => _LoguinPage();

}

class _LoguinPage extends State<LoguinPage>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        backgroundColor: Color.fromRGBO(21,104,180,1).withOpacity(0.7),
        body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
             ),
            ),
            child: Column(
              children: [
                Center(child: Transform.scale(
                  scale: 0.7,
                  child: Image(image: AssetImage('assets/logo.png'),)),),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 150.0),
                  child: Center(child: Transform.scale(
                    scale: 1.8,
                    child: Image(image: AssetImage('assets/aeroplane.png'),)),),
                ),
                SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 90, top: 37),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('We Are Making Travel Easy', style: TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'MavenPro'),),
                  ),
                ),
                Padding(padding: const EdgeInsets.only( right: 117, top: 18),
                  child: Text('Thank You For Beign With Us!', style: TextStyle(color: Colors.white),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0, top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                  side: BorderSide(color: Colors.white,),
                                )
                              )
                            ),
                            onPressed: () {
                              
                            }, 
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0, right: 6.0,),
                              child: Text('New Account', style: TextStyle(color: Colors.white, fontSize: 12),),
                            ),),
                        ),
                          TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                                side: BorderSide(color: Colors.white,),
                              )
                            )
                          ),
                          onPressed: () {
                            
                          }, 
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0, right: 6.0,),
                            child: Text('Agency Account', style: TextStyle(color: Colors.white, fontSize: 12),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FloatingActionButton.large(
                  hoverElevation: 4,
                  backgroundColor: Colors.white, 
                  onPressed: () {
                    Navigator.push(context, PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 623),
                      transitionsBuilder: (BuildContext
                        context,
                        Animation<double> animation, 
                        Animation<double> secondaryAnimation,
                        Widget child) {

                          animation = CurvedAnimation(parent: animation, curve: Curves.easeIn);

                          return ScaleTransition(
                            alignment: Alignment.bottomCenter,
                            scale: animation,
                            child: child,
                            );
                          }
                        , pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) { return UserPage(); }
                    ),);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
                  }, 
                  child: Text('Login', 
                    style: TextStyle(
                      letterSpacing: 0.3, 
                      color: Color.fromRGBO(21,104,180,1)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}