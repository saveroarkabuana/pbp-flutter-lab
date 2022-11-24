# ReadMe.MD counter_7
## Tugas PBP 
## Savero Arkabuana
## 2106635985

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Tugas 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- _Stateless widget_ merupakan _widget_ yang tidak bisa berubah bentuknya dan tidak bersifat dinamis, dengan contoh ```Icon```, ```IconButton```, dan ```Text```. Sedangkan _stateful widget_ merupakan _widget_ yang bersifat dinamis dan bisa berubah, dengan contoh ```Checkbox```, ```Slider```, dan ```Radio```.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- ```Text```, berfungsi untuk menampilkan text pada _app_.
- ```AppBar```, berfungsi untuk memberikan judul dari _app_.
- ```Scaffold```, berfungsi untuk memberikan _base_ dari _app_.
- ```Row```, berfungsi untuk mengatur _layout_ dari tombol _increment_ dan _decrement_ pada _app_.
- ```Visibility```, berfungsi untuk menghilangkan tombol _decrement_ apabila tombol _increment_ belum dipencet.
- ```Center```, berfungsi untuk memposisikan semua _widget_ pada bagian tengah.
- ```Theme```, berfungsi untuk memberikan tema pada _app_.
- ```Icon```, berfungsi untuk mengatur tanda dari tombol pada _app_.


## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- ```setState()```, merupakan _method_ untuk membuat sebuah _widget_ agar bersifat dinamis dan berubah sesuai dengan aktivitas pengguna terbaru. _Method_ ini akan memberikan _update_ terhadap _widget_ yang sesuai dengan respon pengguna dan me-_return_ _state_ dari _widget_ yang sesuai.


## Jelaskan perbedaan antara const dengan final.

- Final, nerupakan _keyword_ yang berfungsi untuk men-_define_ nilai-nilai variabel yang akan dipakai dalam _app_ dan nilai-nilai tersebut tidak akan bisa diganti kedepannya. Final juga berjalan pada _run time_.

- Const, merupakan _keyword_ yang fungsinya mirip dengan Final, tetapi dengan perbedaan untuk membuat sebuah _deep state_ dari sebuah _object_ menjadi _fixed_  dalam _compile time_. Hal ini akan membuat _object_ dalam _deep state_ bersifat _immutable_.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat _function_ _decrementCounter()_ untuk mengurangi nilai _counter_.
```
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
 ```
- Membuat pengecekan dengan menggunakan operator modulo untuk mengecek nilai _counter_ ganjil apa genap dan mengganti warna _text_ sesuai dengan nilai _counter_.
```
  _counter % 2 == 1
                ? const Text(
                    'GANJIL',
                    style: TextStyle(color: Colors.blue),
                  )
                : const Text('GENAP', style: TextStyle(color: Colors.red)),
```
- Membuat _FloatingActionButton()_ baru yang akan dimunculkan apabila nilai _counter_ tidak kosong dan berisi _routing_ untuk _function_ _decrementCounter()_ yang membuat tombol apabila dipencet akan mengurangi nilai _counter_.

```
Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(left: 33),
          child: _counter != 0
              ? FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                )
              : null,
        )
```


## Tugas 8

## Jelaskan perbedaan ```Navigator.push``` dan ```Navigator.pushReplacement```.
- ```Navigator.push``` merupakan _method_ untuk melakukan _routing_ untuk setiap halaman dengan metode _stack_, dimana halaman baru akan menimpa halaman lama.

- ```Navigator.pushReplacement``` merupakan _method_ untuk mengganti _route_ yang sedang berjalan dan menggantinya dengan _route_ yang terbaru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- (Wigdet yang ditambah untuk Tugas 8)
- ```ListTile```, berfungsi untuk menampung elemen _text_ dalam satu baris yang kemudian bisa terurut sesuai dengan urgensi ```ListTile``` elemen tersebut.
- ```MaterialPageRoute```, berfungsi untuk melakukan transisi dari halaman ke halaman.
- ```Icon```, berfungsi untuk memberikan elemen _icon_.
- ```DropdownButton```, berfungsi untuk menambahkan tombol yang mengarah kepada bagian yang akan berisi elemen-elemen yang ingin ditampilkan.
- ```DropdownMenuItem```, berfungsi untuk menampilkan isi elemen-elemen yang ingin ditampilkan setelah _button_ ```DropdownButton``` dipencet.
- ```toList```, berfungsi untuk menampung elemen-elemen yang diinginkan pada bentuk _list_.
- ```Card```, berfungsi untuk menampung elemen yang ingin ditampilkan dalam bentuk _card_ yang disesuaikan dengan keinginan.
- ```Form```, berfungsi untuk menyimpan data dari pengguna yang disesuaikan dengan _form field widgets_ yang digunakan.

- (Wigdet untuk Tugas 7 sebelumnya yang dipakai dalam tugas 8)
- ```Text```, berfungsi untuk menampilkan text pada _app_.
- ```AppBar```, berfungsi untuk memberikan judul dari _app_.
- ```Scaffold```, berfungsi untuk memberikan _base_ dari _app_.
- ```Row```, berfungsi untuk mengatur _layout_ dari tombol _increment_ dan _decrement_ pada _app_.
- ```Visibility```, berfungsi untuk menghilangkan tombol _decrement_ apabila tombol _increment_ belum dipencet.
- ```Center```, berfungsi untuk memposisikan semua _widget_ pada bagian tengah.
- ```Theme```, berfungsi untuk memberikan tema pada _app_.
- ```Icon```, berfungsi untuk mengatur tanda dari tombol pada _app_.


##  Sebutkan jenis-jenis event yang ada pada Flutter (contoh: ```onPressed```).
- ```onPressed()```.
- ```onTap()```.
- ```onSaved()```.
- ```onChanged()```.


## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

- Cara kerja _method_ ```Navigator``` adalah dengan mengambil data-data _routing_ dari pengguna dan mengolahnya dalam bentuk _stack_. Dikarenakan _stack_ bersifat FIFO, maka data _routing_ akan berganti sesuai dengan urutan FIFO, dan diolahnya dengan menggunakan ```Navigator.push``` dan ```Navigator.pop```.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat ```form.dart``` yang isinya sesuai dengan lab 7, dengan perbedaan ada dibagian "pilih jenis", dimana pengisian form dilakukan dengan menggunakan pilihan data yang diimplementasikan dengan method ```Dropdown```.

```
  ListTile(
      leading: const Icon(Icons.class_),
      title: const Text(
          'Pilih Jenis',
      ),
      trailing: DropdownButton(
          value: pilihJenis,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: listJenis.map((String items) {
          return DropdownMenuItem(
              value: items,
              child: Text(items),
          );
          }).toList(),
          onChanged: (String? newValue) {
          setState(() {
              pilihJenis = newValue!;
          });
          },
      ),
  ),
 ```

- Membuat ```show.dart``` yang akan menampilkan isi data dari form dalam bentuk _card_ yang terurut. Data di-_import_ di _page_ ```show.dart``` dan di-_import_ sebagai form yang akan dimasukkan pada variabel yang akan dipakai di ```show.dart```.

```
// Import data dari form.dart

import 'package:counter_7/form.dart';
import 'package:counter_7/form.dart' as form;

var formData = form.budgetList;

.........

// Pembuatan card dengan melakukan looping data dan mengisi setiap card sesuai dengan urutan

for (int i=0; i < formData.length; i++)...[

              Container(
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  color: Colors.white,
                  child: SizedBox(
                    width: 1000,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                            formData[i].judul,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          ),

                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    formData[i].nominal,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    formData[i].jenis,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
```


- Melakukan _routing_ pada setiap _file_ di ```lib```dengan mengisi ```Drawer``` dengan ```ListTile``` yang akan melakukan _routing_ dengan ```Navigator.pushReplacement()``` dan memberikan transisi dengan ```MaterialPageRoute()```.

```
            drawer: Drawer(
                child: Column(
                    children: [
                    ListTile(
                        title: const Text('Counter'),
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter')),
                        );
                        },
                    ),

                    ListTile(
                        title: const Text('Tambah Budget'),
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyFormPage()),
                        );
                        },
                    ),

                    ListTile(
                        title: const Text('Data Budget'),
                        onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyShowPage()),
                        );
                        },
                    ),
                    ],
                ),
            ),
```

## Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?.

- Bisa dilakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Hal ini dengan mengonversi data json secara langsung setelah didekodekan dari url. Akan tetapi, penggunaan metode ini jarang digunakan. Dari dokumentasi Flutter, disarankan untuk membuat folder model terlebih dahulu. Jadi menurut saya metode tanpa membuat model tidak lebih baik dibanding metode membuat model terlebih dahulu dengan alasan metode tanpa membuat model akan lebih sulit dibaca dan tidak efisien.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- (Wigdet yang ditambah untuk Tugas 8)
- ```ListTile```, berfungsi untuk menampung elemen _text_ dalam satu baris yang kemudian bisa terurut sesuai dengan urgensi ```ListTile``` elemen tersebut.
- ```MaterialPageRoute```, berfungsi untuk melakukan transisi dari halaman ke halaman.
- ```Icon```, berfungsi untuk memberikan elemen _icon_.
- ```DropdownButton```, berfungsi untuk menambahkan tombol yang mengarah kepada bagian yang akan berisi elemen-elemen yang ingin ditampilkan.
- ```DropdownMenuItem```, berfungsi untuk menampilkan isi elemen-elemen yang ingin ditampilkan setelah _button_ ```DropdownButton``` dipencet.
- ```toList```, berfungsi untuk menampung elemen-elemen yang diinginkan pada bentuk _list_.
- ```Card```, berfungsi untuk menampung elemen yang ingin ditampilkan dalam bentuk _card_ yang disesuaikan dengan keinginan.
- ```Form```, berfungsi untuk menyimpan data dari pengguna yang disesuaikan dengan _form field widgets_ yang digunakan.

- (Wigdet untuk Tugas 7 sebelumnya yang dipakai dalam tugas 8)
- ```Text```, berfungsi untuk menampilkan text pada _app_.
- ```AppBar```, berfungsi untuk memberikan judul dari _app_.
- ```Scaffold```, berfungsi untuk memberikan _base_ dari _app_.
- ```Row```, berfungsi untuk mengatur _layout_ dari tombol _increment_ dan _decrement_ pada _app_.
- ```Visibility```, berfungsi untuk menghilangkan tombol _decrement_ apabila tombol _increment_ belum dipencet.
- ```Center```, berfungsi untuk memposisikan semua _widget_ pada bagian tengah.
- ```Theme```, berfungsi untuk memberikan tema pada _app_.
- ```Icon```, berfungsi untuk mengatur tanda dari tombol pada _app_.

- (Wigdet untuk Tugas 8 sebelumnya yang dipakai dalam tugas 9)
- ```Drawer```, befungsi untuk membuat _drawer_ yang berfungsi dalam berpindah halaman.
- ```Container```,  berfungsi sebagai wadah dalam menampung _widgets_.
- ```ListView```, berfungsi dalam mengelompokkan beberapa objek dan dapat di-_scroll_ dalam tampilan halaman.
- ```FutureBuilder```, berfungsi dalam membuat widget berdasarkan interaksi dengan _widget_ dan untuk mengambil data.


##  Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Pertama, tambahkan paket http dengan perintah ```flutter pub add http```
- Kedua, berikan akses internet ke proyek yang sedang dibuat dengan menambahkan beberapa baris kode ke file android/app/src/main/AndroidManifest.xml. 
- Ketiga, data json diperoleh dengan mengambil metode di file fetchwatchlist.dart. 
- Keempat, data yang diambil akan dikonversi berdasarkan kode di watchlist.dart di folder model.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat folder _model_, yang berisikan konversi data JSON menjadi kode Dart, yang berfungsi mengambil _field_ dan isi dari _field_ data tersebut. Lalu membuat file ```mywatchlist.dart```, yang berisikan kode Dart yang sudah di-_convert_.

```
// To parse this JSON data, do
//
//     final myWatchListModel = myWatchListModelFromJson(jsonString);

import 'dart:convert';

List<MyWatchListModel> myWatchListModelFromJson(String str) => List<MyWatchListModel>.from(json.decode(str).map((x) => MyWatchListModel.fromJson(x)));

String myWatchListModelToJson(List<MyWatchListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchListModel {
    MyWatchListModel({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model? model;
    int pk;
    Fields fields;

    factory MyWatchListModel.fromJson(Map<String, dynamic> json) => MyWatchListModel(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}
class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    Watched? watched;
    String title;
    int rating;
    String releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]],
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}

enum Watched { YES }

final watchedValues = EnumValues({
    "yes": Watched.YES
});

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap!;
    }
}
 ```

- Membuat folder ```page```, yang akan berisikan ```drawer.dart```, ```fetchwatchlist.dart```, dan ```mywatchlist.dart```. 

```drawer.dart``` akan berfungsi untuk mempersingkat file-file pada aplikasi dengan meng-_import_  ```ListTile``` kepada setiap halaman. 
```fetchwatchlist.dart``` berfungsi untuk mengambil data dari link yang mengandung data JSON dan memasukannya dalam sebuah _list_ kosong. 
```mywatchlist.dart``` berfungsi untuk menampilkan data-data dari JSON yang sudah di-_fetch_.


- Melakukan _routing_ dengan menambahkan ```ListTile``` baru pada ```drawer.dart``` untuk ```MyWatchlistPage```.

```
ListTile(
            title: const Text('My Watch List'),
            onTap: () {
                // Route menu ke halaman to do
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
            },
        ),
```

## Referensi
- https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart
- https://dev.to/nicks101/when-to-use-setstate-in-flutter-380
- https://docs.flutter.dev/development/ui/widgets
- https://docs.flutter.dev/development/ui/interactive#:~:text=to%20Managing%20state.-,Stateful%20and%20stateless%20widgets,are%20examples%20of%20stateless%20widgets.
- https://belajarflutter.com/memahami-navigasi-routing-di-flutter/
- https://api.flutter.dev/flutter/widgets/Navigator/pushReplacement.html
- https://api.flutter.dev/flutter/widgets/Navigator-class.html#:~:text=Using%20the%20Navigator%20API&text=In%20Flutter%20these%20elements%20are,push%20and%20Navigator.
- https://api.flutter.dev/flutter/widgets/Navigator-class.html#:~:text=Using%20the%20Navigator%20API&text=In%20Flutter%20these%20elements%20are,push%20and%20Navigator.
- https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html
- https://docs.flutter.dev/development/data-and-backend/json

