import 'dart:io';
import 'dart:math';

void main() {

    print('=== TUGAS 2 ===\n');

    // 1. Hitung Nilai  (0-100)
    int nilai = 80;
    String huruf;
    if (nilai >= 85) {
        huruf = "A";
    } else if (nilai >= 70) {
        huruf = "B";
    } else if (nilai >= 55) {
        huruf = "C";
    } else {
        huruf = "D";
    }
    print("Nilai $nilai Dapat : $huruf");

    // 2. Menampilkan Bilangan 1-20 (Fizz, Buzz, FizzBuzz)
    for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
        print("FizzBuzz");
    } else if (i % 3 == 0) {
        print("Fizz");
    } else if (i % 5 == 0) {
        print("Buzz");
    } else {
        print(i);
    }
    }

    // 3. Menampilkan Jumlah, Rata-Rata, Nilai Maksimum, Dan Nilai Minimum
    List<int> angkaList = [12, 45, 7, 23, 30];
    int jumlah = angkaList.reduce((a, b) => a + b);
    double rataRata = jumlah / angkaList.length;
    int maks = angkaList.reduce(max);
    int min = angkaList.reduce(min);
    print("Angka: $angkaList");
    print("Jumlah: $jumlah | Rata-rata: $rataRata | Maks: $maks | Min: $min");

    // 4. Permainan Tebak Angka Acak 0-5 
    var random = Random();
    int angkaRandom = random.nextInt(6);
    
    stdout.write('Masukan Angka Anda (0-5): ');
    String? input = stdin.readLineSync();
  
    if (input != null) {
        int tebakan = int.tryParse(input) ?? -1;
        print("Angka tebakan Anda : $tebakan");
        print("Angka acak program : $angkaRandom");
        if (tebakan == angkaRandom) {
            print("Selamat, Tebakan Anda benar!!!");
        } else {
            print("Tebakan Anda salah, Silahkan Coba Lagi.");
        }
    }
}