import 'package:flutter/material.dart';

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String programStudi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.programStudi,
  });

  @override
  Widget build(BuildContext context) {
    // 2 digit terakhir NIM = 85

    // Lebar Kartu (Container.width): 320.0 + (8 * 5) = 360.0
    const double lebarKartu = 360.0;

    // Sudut Melengkung (BorderRadius.circular): 12.0 + (5 * 1.5) = 19.5
    const double sudutMelengkung = 19.5;

    // Ukuran Logo (FlutterLogo.size): 60.0 + (5 * 2) = 70.0
    const double ukuranLogo = 70.0;

    // Jarak Pemisah (SizedBox.width): 15.0 + 5 = 20.0
    const double jarakPemisah = 20.0;

    // Skor Aktivitas: 85 + 50 = 135
    const int skorAktivitas = 135;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudutMelengkung),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FlutterLogo(size: ukuranLogo),
              const SizedBox(width: jarakPemisah),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KARTU MAHASISWA',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      'Identitas Resmi',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          const Divider(thickness: 1.5),
          const SizedBox(height: 12.0),
          _buildInfoRow('Nama', nama),
          const SizedBox(height: 8.0),
          _buildInfoRow('NIM', nim),
          const SizedBox(height: 8.0),
          _buildInfoRow('Program Studi', programStudi),
          const SizedBox(height: 8.0),
          _buildInfoRow('Skor Aktivitas', '$skorAktivitas'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 110.0,
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        ),
        const Text(': '),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
