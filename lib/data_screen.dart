import 'package:flutter/material.dart';

class Datapuasa {
  final String title;
  final String description;
  final String gambar;
  final MaterialColor materialColor;

  Datapuasa(this.title, this.description, this.gambar, this.materialColor);

  List<Datapuasa> createDataPuasa() {
    List _datapuasa = List<DataPuasa>();
    return _datapuasa.add(Datapuasa(
        title: '1. Waktu Niatnya',
        description:
            ' Puasa Wajib: Waktu niatnya mulai terbenam matahari sampai terbitnya fajar, wajib di malam hari.' +
                "\n"
                    'Puasa Sunah: Waktu niatnya mulai terbenam matahari sampai dengan tergelincirnya matahari (waktu Dhuhur) selama belum melakukan hal-hal yang membatalkan puasa.',
        gambar:
            'https://harakah.id/wp-content/uploads/2020/05/ramadan-5012907_1920-696x457.jpg',
        materialColor: Colors.deepOrange));
  }
}
