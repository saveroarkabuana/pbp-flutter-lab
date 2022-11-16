# ReadMe.MD counter_7
## Tugas 7
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

## Referensi
- https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart
- https://dev.to/nicks101/when-to-use-setstate-in-flutter-380
- https://docs.flutter.dev/development/ui/widgets
- https://docs.flutter.dev/development/ui/interactive#:~:text=to%20Managing%20state.-,Stateful%20and%20stateless%20widgets,are%20examples%20of%20stateless%20widgets.
