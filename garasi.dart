import 'mobil.dart';
import 'motor.dart';

class Garasi {
  List<Mobil> mobilDiGarasi = [];
  List<Motor> motorDiGarasi = [];

  void tambahMobil(Mobil mobil) {
    mobilDiGarasi.add(mobil);
  }

  void tambahMotor(Motor motor) {
    motorDiGarasi.add(motor);
  }

  void servisKendaraan() {
    for (var mobil in mobilDiGarasi) {
      mobil.servisKendaraan();
    }
    for (var motor in motorDiGarasi) {
      motor.servisKendaraan();
    }
  }

  void tampilkanShowRoom() {
    print('===== Mobil ======');
    for (var mobil in mobilDiGarasi) {
      mobil.tampilkanDetail();
    }
    print('===== Motor =====');
    for (var motor in motorDiGarasi) {
      motor.tampilkanDetail();
    }
  }

}