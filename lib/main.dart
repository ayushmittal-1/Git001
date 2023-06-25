import 'package:flutter/material.dart';

import 'new.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyApp(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondRoute(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  color: Colors.white38,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Welcome pal',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  color: Colors.white38,
                  child: const Text(
                    '    We deliver you happiness to your room...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                      height: 300,
                      width: 300,
                      alignment: Alignment.bottomCenter,
                      image: AssetImage('assets/peace.jpg')),
                ),
              ],
            ),
            const Divider(
              height: 1,
              thickness: 2,
              color: Colors.black,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 50, width: 200),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.black, // background (button) color
                        foregroundColor: Colors.white, //ye text color k liye h
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Text('Get Started')),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/id/914707160/vector/cartoon-intoxicated-eyes-vector-illustration.jpg?s=612x612&w=0&k=20&c=x8OJqVFE96Xr-wrKBf4W-4y0OmAhR_-YH0YE97MaMZc='),
                  height: 120,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*........................................................................................................................................*/
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:ListView(
          children: const [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.home),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    ' Jaipur, Rajasthan',
                    style: TextStyle(fontSize: 22),
                  ),

                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),Spacer(),
                Icon(Icons.person,size: 36,),
                Spacer(),

              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 20, left: 5),
                  child: Text(
                    'Good morning, Ayush! ',
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Lets order fresh\nitems for you',
                    style: TextStyle(fontSize: 43),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Divider(
                height: 10,
                thickness: 2.5,
                color: Colors.black12,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 24),
                  child: Text('Fresh items',style: TextStyle(fontSize: 16),),
                ),

              ],
            ),
           MeriGrid()
          ],
        ),


        
        
      ),
    );
  }
}
