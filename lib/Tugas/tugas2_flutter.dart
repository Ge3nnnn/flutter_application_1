import 'package:flutter/material.dart';

class TugasFlutter2 extends StatelessWidget {
  const TugasFlutter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 139, 120, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 59, 110),
        title: Text('Detail Toko'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Toko Mama Budi",
                    style: TextStyle(fontSize: 43, fontFamily: "Schyler"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(5, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(7),
            height: 40,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.mail_outlined),
                    SizedBox(width: 10),
                    Text("email.contoh12@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Icon(Icons.phone),
                Text("+62 123 4567 0987"),
                Spacer(),
                Icon(Icons.location_on),
                Text("Jakarta, Indonesia"),
                Padding(padding: EdgeInsetsGeometry.all(10)),
              ],
            ),
          ),
          // add more box
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 20,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      width: 170,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3000++", style: TextStyle(fontSize: 20)),
                          Text("Users", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 20,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      width: 170,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_purple500_sharp),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("4.3/5", style: TextStyle(fontSize: 20)),
                              Text(
                                "Rating by Users",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text(
                  "Selamat datang di toko kami. Kami menyediakan berbagai produk berkualitas dengan harga yang terjangkau. Kepuasan pelanggan adalah prioritas utama kami. Setiap produk dipilih dengan cermat untuk memastikan kualitas terbaik. Proses pemesanan mudah, cepat, dan aman. Kami juga menghadirkan berbagai promo menarik secara berkala. Tim kami siap membantu jika Anda memiliki pertanyaan atau membutuhkan bantuan. Pengiriman dilakukan dengan layanan yang terpercaya. Terima kasih telah mempercayai toko kami. Semoga Anda mendapatkan pengalaman belanja yang menyenangkan.",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          // container box photo
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(5, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(7),
            height: 200,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/Images/gambar toko.png")],
            ),
          ),
        ],
      ),
    );
  }
}
