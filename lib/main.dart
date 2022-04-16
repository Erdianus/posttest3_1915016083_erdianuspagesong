import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'PESAN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controllerNama = TextEditingController();
  final controllerHaircut = TextEditingController();
  final controllerHarga = TextEditingController();
  String nama = "", haircut = "", harga = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Pesan'),
        backgroundColor: Color.fromARGB(255, 33, 33, 33),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controllerNama,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Pemesan",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controllerHaircut,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Jenis Haircut",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controllerHarga,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Harga",
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    nama = controllerNama.value.text;
                    haircut = controllerHaircut.value.text;
                    harga = controllerHarga.value.text;
                  });
                },
                child: Text('Pesan'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('PESANAN ANDA'),
            ),
            Text('Nama : $nama'),
            Text('Haircut : $haircut'),
            Text('harga : $harga'),
          ],
        ),
      ),
    );
  }
}
