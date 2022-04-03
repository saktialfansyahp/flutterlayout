import 'package:flutter/material.dart';
import 'package:flutter_layout/Detail_Screen.dart';
import 'package:flutter_layout/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{

  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/submarine.jpg',
        listImage: [
          'assets/images/monkusel_1.jpg',
          'assets/images/monkusel_2.jpg',
          'assets/images/submarine.jpg',
          'assets/images/2.jpg',
          'assets/images/3.jpg',
        ],
        deskripsi:
            'Monumen Kapal Selam Surabaya atau yang lebih dikenal dengan Monumen Kapal Selam (Monkasel) adalah monumen kapal selam '
            'terbesar di Asia yang dibangun di tepi sungai Kalimas, Surabaya. Monumen ini dibangun atas ide para Veteran Angkatan Laut.'
            'KRI Pasopati 410, merupakan salah satu SS Whiskey Class SS, buatan Vladi Wostok Rusia tahun 1952.',
        jamBuka: 'Setiap hari',
        tiket: 'Rp.12.000',
        waktu: '10.00'),
    TourismPlace(
        name: 'Klenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/klenteng.jpg',
        listImage: [
          'assets/images/ksa1.jpg',
          'assets/images/ksa2.jpg',
          'assets/images/ksa3.jpg',
        ],
        deskripsi:
            'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan '
            'Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi '
            'tempat tujuan wisata bagi para wisatawan. Klenteng ini dibuka pada tahun 1999',
        jamBuka: 'Setiap hari,Minggu tutup',
        tiket: 'Rp.1o.000',
        waktu: '08.00'),
    TourismPlace(
        name: 'House Of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/houseofsampoerna.jpg',
        listImage: [
          'assets/images/hos1.jpg',
          'assets/images/hos2.jpg',
          'assets/images/hos3.jpg',
          'assets/images/hos4.jpg',
        ],
        deskripsi:
            'Museum rokok ini dulunya adalah pabrik rokok pertama Sampoerna. Saat ini bangunan bergaya kolonial Belanda yang dibangun '
            'sekitar tahun 1862 termasuk dalam situs bersejarah yang dilestarikan di Surabaya. Pada masa Belanda, bangunan ini adalah panti '
            'asuhan yang dikelola Belanda.',
        jamBuka: 'Setiap hari',
        tiket: 'Rp.15.000',
        waktu: '10.00'),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-Alun Contong',
        imageAsset: 'assets/images/tugupahlawan.jpg',
        listImage: [
          'assets/images/tp1.jpg',
          'assets/images/tp2.jpg',
          'assets/images/tp3.jpg',
          'assets/images/tp4.jpg',
        ],
        deskripsi:
            'Tugu Pahlawan didirikan pada tanggal 10 November 1951 dan diresmikan pada tanggal 10 November 1952 oleh Presiden RI, Ir. '
            'Soekarno, dengan tujuan untuk mengenang sejarah perjuangan para pahlawan kemerdekaan bangsa Indonesia dalam pertempuran 10 '
            'Nopember 1945 di Surabaya.',
        jamBuka: 'Sabtu dan Minggu tutup',
        tiket: 'Rp.20.000',
        waktu: '10.00'),
    TourismPlace(
        name: 'Patung Suro Boyo',
        location: 'Wonokromo',
        imageAsset: 'assets/images/patungsuroboyo.jpg',
        listImage: [
          'assets/images/ps1.jpg',
          'assets/images/ps2.jpg',
          'assets/images/ps3.jpg',
          'assets/images/ps4.jpeg',
        ],
        deskripsi:
            'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang '
            'Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
        jamBuka: 'Setiap hari',
        tiket: 'Rp.12.000',
        waktu: '10.00'),
    TourismPlace(
        name: 'Alun-Alun Bawah Tanah Surabaya',
        location: 'Komplek Balai Pemuda Jl.Yos Sudarso',
        imageAsset: 'assets/images/alunalunbawahtanah.jpg',
        listImage: [
          'assets/images/aa1.jpg',
          'assets/images/aa2.jpeg',
          'assets/images/aa3.jpg',
          'assets/images/aa4.jpg',
        ],
        deskripsi:
            'Alun-Alun Bawah Tanah Surabaya yang berlokasi di komplek Balai Pemuda jalan yos sudarso kini sedang ramai diperbincangkan. '
            'Pemkot Surabaya membuka Alun-Alun Surabaya yang berada di bawah komplek Balai Pemuda Surabaya.',
        jamBuka: 'Setiap hari',
        tiket: '20.000',
        waktu: '09.00 - 20.00'),
    TourismPlace(
        name: 'Taman Kenjeran',
        location: 'Sukolilo Baru, daerah Kecamatan Bulak',
        imageAsset: 'assets/images/tamankenjeran.jpg',
        listImage: [
          'assets/images/tk1.jpg',
          'assets/images/tk2.jpg',
          'assets/images/tk3.jpg',
        ],
        deskripsi:
            'Taman Kenjeran memiliki beberapa pilihan tempat berwisata yang menarik, antara lain waterboom, berbagai bangunan unik serta '
            'pantai. Menghabiskan waktu berenang, bermain dan berfoto di bangunan-'
            'bangunan unik tempat wisata ini juga menjadi hal menarik yang bisa Anda lakukan',
        jamBuka: 'Setiap hari',
        tiket: '5.000',
        waktu: '09.00 - 16.00'),
    TourismPlace(
      name: 'Taman Air Mancur Menari kenjeran',
      location: '600 old Beach Road, daerah Kenjeran Bulak',
      imageAsset: 'assets/images/tamanairmancur.jpg',
      listImage: [
        'assets/images/tam1.jpg',
        'assets/images/tam2.jpg',
        'assets/images/tam3.jpg',
        'assets/images/tam4.jpeg',
      ],
      deskripsi:
          'Jembatan Kenjeran atau yang biasa disebut sebagai Jembatan Suroboyo yang kini menjadi salah satu ikon kota Pahlawan ini '
          'diresmikan oleh walikota Surabaya, ibu Tri Rismaharini pada tanggal 8 Juli 2016. Jembatan yang berbentuk menyerupai busur setengah '
          'lingkaran ini kini banyak dikunjungi oleh wisatawan dari luar kota dan warga Surabaya sendiri.',
      jamBuka: 'Setiap hari',
      tiket: '10.000',
      waktu: '20.00 - 21.00',
    ),
    TourismPlace(
        name: 'Masjid Muhammad Cheng Hoo',
        location: 'Jalan Gading daerah Genteng',
        imageAsset: 'assets/images/masjid.jpg',
        listImage: [
          'assets/images/m1.jpg',
          'assets/images/m2.jpg',
          'assets/images/tm3.jpg',
        ],
        deskripsi:
            'Sebuah masjid unik bergaya arsitektur Cina bisa Anda saksikan di Surabaya. Masjid ini terletak di Jalan Gading daerah Genteng.'
            'Mengusung arsitektur Cina dan berpadu dengan arsitektur Arab menjadikan masjid ini bukan hanya menjadi tempat beribadah bagi '
            'masyarakat tetapi juga menjadi spot berfoto incaran.',
        jamBuka: 'Setiap hari',
        tiket: '-',
        waktu: '-'),
    TourismPlace(
        name: 'Taman Bungkul',
        location: 'Jalan Raya Darmo',
        imageAsset: 'assets/images/tamanbungkul.jpeg',
        listImage: [
          'assets/images/tb1.jpg',
          'assets/images/tm2.jpg',
          'assets/images/tm3.jpg',
          'assets/images/tb4.jpg',
        ],
        deskripsi:
            'Nama taman ini berasal dari nama seorang tokoh penyebar agama Islam di Surabaya bernama Sunan Bungkul. Makamnya bisa Anda '
            'temukan di kawasan taman tersebut.',
        jamBuka: 'Setiap hari',
        tiket: 'gratis',
        waktu: '24 jam'),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
