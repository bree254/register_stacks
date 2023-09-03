import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    const Positioned(
                        top: 0,
                        right: 0,
                        height: 180,
                        child: Image(
                          image: AssetImage('assets/images/Ellipse 4.png'),
                        )
                    ),
                    const Positioned(
                        right: 0,
                        top: 0,
                        height: 160,
                        child: Image(
                          image: AssetImage('assets/images/Ellipse 3.png'),
                        )
                    ),
                    Container(
                      height: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse 1.png'),
                            fit: BoxFit.fill
                        ),
                      ),
                      child: Center(
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                          child: Text(
                            'Join Other Dreamers',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),


                    ),

                  ],
                ),

            ]
        )
        )
    )
    );
  }
}
