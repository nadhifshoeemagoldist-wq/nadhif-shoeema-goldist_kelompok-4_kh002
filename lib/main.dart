import 'package:flutter/material.dart';
import 'kartu_mahasiswa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Digit Terakhir NIM = 5 (Ganjil) -> Colors.tealAccent[100]
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Mahasiswa',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent[100],
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Mahasiswa'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const Center(
        child: KartuMahasiswa(
          nama: 'NADHIF SHOEEMA GOLDIST',
          nim: '20240801085',
          programStudi: 'Teknik Informatika',
        ),
      ),
    );
  }
}
