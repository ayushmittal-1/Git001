import 'package:flutter/material.dart';


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

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
                      image: NetworkImage(
                          'https://st.depositphotos.com/1029160/2730/v/950/depositphotos_27303527-stock-illustration-peace-symbol-on-white-bckground.jpg')),
                ),
              ],
            ),
            const Divider(
              height: 1,
              thickness: 1.5,
              color: Colors.black,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      Colors.black, // background (button) color
                      foregroundColor: Colors.white, //ye text color k liye h
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage1()),
                      );
                    },
                    child: Text('Get Started'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
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

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
