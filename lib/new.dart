import 'package:flutter/material.dart';

class MeriGrid extends StatelessWidget {
  const MeriGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 160,
                width: 150,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: const DecorationImage(
                    image: AssetImage('assets/water.png'),

                  ),
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                height: 160,
                width: 150,

                decoration: BoxDecoration(
                  color: Colors.brown,
                  image: const DecorationImage(
                    image:
                    AssetImage('assets/chicken.png'),
                    fit: BoxFit.fill,

                  ),
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 160,
                width: 150,

                decoration: BoxDecoration(
                  color: Colors.green,
                  image: const DecorationImage(
                    image: AssetImage('assets/avocado.png'),
                    fit: BoxFit.fill,

                  ),
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 160,
                width: 150,

                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  image: const DecorationImage(
                    image:

                    AssetImage('assets/banana.png'),
                    fit: BoxFit.fill,

                  ),
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
