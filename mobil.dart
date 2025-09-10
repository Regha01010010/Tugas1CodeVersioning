import 'kendaraan.dart';

class Mobil extends Kendaraan {
  String mesin;
  int tahun;
  String warna;
  int pintu;
  String _pemilik;

  Mobil(String merk,String nama,this.mesin,this.tahun,this.warna,this._pemilik,this.pintu) : super(merk,nama);

  @override
  void nyalakanMesin() {
    print('Masukkan kunci kontak');
    print('Ignition On');
    print('Starter mesin');
    print('Mesin Nyala');
  }

  @override
  void matikanMesin() {
    print('Ignition off');
    print('Mesin mati');
    print('Cabut kunci kontak');
  }

  @override
  void bunyikanBel() {
    print('Din DIn');
  }

  @override
  void servisKendaraan() {
    print('Mobil $merk $nama sedang diservis!');
    print('Mobil $merk $nama berhasil diservis!');
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
    print('''===== Detail Mobil =====
Merk : $merk
Nama : $nama
Tahun : $tahun
Warna : $warna
Pintu : $pintu Pintu
''');
  }
}