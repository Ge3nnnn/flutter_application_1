import 'package:flutter/material.dart';

class DontRepeatYourSelf extends StatefulWidget {
  const DontRepeatYourSelf({super.key});

  @override
  State<DontRepeatYourSelf> createState() => _DontRepeatYourSelfState();
}

bool showImage = false;

class _DontRepeatYourSelfState extends State<DontRepeatYourSelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Home Routing Day 11"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // tombol tidak efisien kalo banyak
            Center(
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("sadasd");
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("kelik saya!!")));
                },
                child: Text("klik akuu"),
              ),
            ),
            // Tombol banyak lebih efisien dan gege
            buttonNavigator(context),

            // // text button
            // TextButton(
            //   onPressed: () {
            //     debugPrint("asdassd");
            //   },
            //   child: Text("Selengkapnya"),
            // ),

            // // icon button
            // IconButton(
            //   onPressed: () {
            //     debugPrint("sadasdsa");
            //   },
            //   icon: Icon(Icons.favorite),
            // ),
            // InkWell(
            //   onTap: () {
            //     debugPrint("klick gambar");
            //   },
            //   child: Text(
            //     "asddasasddasasd",
            //     style: TextStyle(color: Colors.cyan),
            //   ),
            // ),

            // // gesture Detector
            // GestureDetector(
            //   onTap: () {
            //     debugPrint("klick  se kai");
            //   },
            //   onDoubleTap: () {
            //     debugPrint("klick  se kai");
            //   },
            //   onLongPress: () {
            //     debugPrint("klick  se kai");
            //   },
            //   child: Container(
            //     width: 500,
            //     height: 50,
            //     color: Colors.amber,
            //     padding: EdgeInsets.all(8),
            //     child: Text("klik saya"),
            //   ),
            // ),
            // // floating button
            // SizedBox(height: 10),
            // FloatingActionButton(
            //   onPressed: () {
            //     debugPrint("FAB ditekan");
            //   },
            //   tooltip: "tambah data",
            //   child: Icon(Icons.thumb_up),
            // ),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
            buttonNavigator(context),
           
          ],
        ),
      ),
    );
  }

  Center buttonNavigator(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        onPressed: () {
          debugPrint("sadasd");
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Sudah kelik saya!!")));
        },
        child: Text("klik akuu", style: TextStyle(color: Colors.amber)),
      ),
    );
  }
}
