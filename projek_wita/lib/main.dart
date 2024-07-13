import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROJEK DAFTAR NAMA NAMA MAHA SISWA',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: StudentListScreen(),
    );
  }
}

class Student {
  final int number;
  final String name;
  final String nim;
  final String major;
  final String className;

  Student(
    this.number,
    this.name,
    this.nim,
    this.major,
    this.className,
  );
}

class StudentListScreen extends StatelessWidget {
  final List<Student> students = [
    Student(1, 'lintang trio saputra', 'STI202102429', 'Teknik Informatika',
        'sore'),
    Student(2, 'ayu tiarani', 'STI202102430', 'Teknik Informatika', 'sore'),
    Student(3, 'ahmad sarif', 'STI202102432', 'Teknik Informatika', 'sore'),
    Student(4, 'tria wahyu apriyanti', 'STI202102438', 'Teknik Informatika',
        'sore'),
    Student(5, 'riki nuralim', 'STI202102440', 'Teknik Informatika', 'sore'),
    Student(6, 'juwita kristiani hia', 'STI202102586', 'Teknik Informatika',
        'sore'),
    Student(7, 'deni setiadi', 'STI202102464', 'Teknik Informatika', 'sore'),
    Student(8, 'riyana', 'STI202102468', 'Teknik Informatika', 'sore'),
    Student(9, 'apik maulidah purnaningsi', 'STI202102475',
        'Teknik Informatika', 'sore'),
    Student(10, 'faqih dwi alfa', 'STI202102482', 'Teknik Informatika', 'sore'),
    Student(
        11, 'efan fikri aditya', 'STI202102109', 'Teknik Informatika', 'sore'),
  ];

  final List<Color> colors = [
    Colors.red[300]!,
    Colors.green[300]!,
    Colors.blue[300]!,
    Colors.orange[300]!,
    Colors.purple[300]!,
    Colors.teal[300]!,
    Colors.amber[300]!,
    Colors.cyan[300]!,
    Colors.lime[300]!,
    Colors.pink[300]!,
    Colors.indigo[300]!,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.amberAccent,
    Colors.cyanAccent,
    Colors.limeAccent,
    Colors.pinkAccent,
    Colors.indigoAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROJEK DAFTAR NAMA NAMA MAHA SISWA',
          style: TextStyle(
            fontFamily: 'Berlin sans fb demi',
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical, // Pengguliran vertikal
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color:
                colors[index % colors.length], // Warna latar belakang berbeda
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Sejajarkan ke tengah
                children: [
                  Text(
                    'No: ${students[index].number}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nama: ${students[index].name}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NIM: ${students[index].nim}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Jurusan: ${students[index].major}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Kelas: ${students[index].className}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
