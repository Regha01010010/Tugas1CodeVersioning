import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main(){
  //Membuat objek garasi
  Garasi showRoom = Garasi();

  //Membuat objek Mobil
  Mobil mobil1 = Mobil('Mercedes Benz', 'AMG GT63', '4000cc', 2024, 'Silver', 'Regha Rahmadian', 4);
  Mobil mobil2 = Mobil('Toyora', 'Supra MKIV', '3000cc', 1999, 'Putih', 'Regha Rahmadian', 2);

  //Menambahkan objek Mobil ke Garasi
  showRoom.tambahMobil(mobil1);
  showRoom.tambahMobil(mobil2);

  //Membuat objek Motor
  Motor motor1 = Motor('Honda', 'Supra X 125 R', '125cc', 2011, 'Hitam', 'Regha Rahmadian', false);
  Motor motor2 = Motor('Honda', 'Vario 125', '125cc', 2017, 'Putih', 'Regha Rahmadian', true);
  Motor motor3 = Motor('Honda', 'Supra X', '100cc', 2001, 'Hitam', 'Regha Rahmadian', false);

  //Menambahkan objek Motor ke Garasi
  showRoom.tambahMotor(motor1);
  showRoom.tambahMotor(motor2);
  showRoom.tambahMotor(motor3);

  //Menampilkan semua kendaraan yang ada di Garasi
  showRoom.tampilkanShowRoom();

  //Menservis semua kendaraan yang ada di Garasi
  showRoom.servisKendaraan();

  //Fungsi untuk implementasi enkapsulasi (Getter)
  void tampilkanPemilikKendaraan(Motor motor) {
    String pemilikKendaraan = motor.getPemilik();
    print('Kendaraan ini dimiliki atas nama : $pemilikKendaraan');
  }

  //Fungsi untuk implementasi enkapsulasi (Setter)
  void gantiPemilikKendaraan(Motor motor,String pemilikBaru) {
    motor.gantiPemilik(pemilikBaru);
  }

  //Contoh Penggunaan Getter dan Setter
  tampilkanPemilikKendaraan(motor1);
  gantiPemilikKendaraan(motor1, 'Affan Ikhwandi');
  tampilkanPemilikKendaraan(motor1);
}