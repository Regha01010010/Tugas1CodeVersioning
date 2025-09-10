import 'kendaraan.dart';

class Motor extends Kendaraan {
  String mesin;
  int tahun;
  String warna;
  bool keranjang;
  String _pemilik;

  Motor(String merk,String nama,this.mesin,this.tahun,this.warna,this._pemilik,this.keranjang) : super(merk,nama);

  @override
  void nyalakanMesin() {
    print('Masukkan kunci kontak');
    print('Ignition On');
    print('Starter mesin');
    print('Mesin nyala');
  }

  @override
  void matikanMesin() {
    print('Ignition off');
    print('Mesin mati');
    print('Cabut kunci kontak');
  }

  @override
  void bunyikanBel() {
    print('Tin Tin');
  }

  @override
  void servisKendaraan() {
    print('Motor $merk $nama sedang diservis!');
    print('Motor $merk $nama berhasil diservis!');
  }

  String getPemilik() {
    return _pemilik;
  }

  void gantiPemilik(String pemilikBaru) {
    _pemilik = pemilikBaru;
  }

  void gantiWarna(String warnaBaru) {
    warna = warnaBaru;
  }

  void tampilkanDetail(){
    print('''===== Detail Motor =====
Merk : $merk
Nama : $nama
Tahun : $tahun
Warna : $warna
Keranjang : ${keranjang? 'Dengan Keranjang' : 'Tanpa Keranjang'}
''');
  }
}