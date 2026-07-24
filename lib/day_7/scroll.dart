import 'package:flutter/material.dart';

class SingleStyleScroll extends StatelessWidget {
  const SingleStyleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single child scrol", style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: Icon(Icons.home),
      ),

      // bodynya disini
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, //buat arah scrolnya
        // reverse: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(90),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),

                  height: 450,
                  width: 400,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 255, 7, 7),
                  ),

                  height: 350,
                  width: 400,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 52, 7, 255),
                  ),

                  height: 250,
                  width: 400,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 13, 251, 251),
                  ),

                  height: 150,
                  width: 400,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 248, 247, 250),
                  ),

                  height: 50,
                  width: 400,
                ),
              ],
            ),

            // buleta kedua
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.amber,
                  ),

                  height: 1000,
                  width: 400,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 255, 7, 7),
                  ),

                  height: 250,
                  width: 50,
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                      ),

                      height: 1000,
                      width: 400,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 255, 7, 7),
                      ),

                      height: 250,
                      width: 50,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
