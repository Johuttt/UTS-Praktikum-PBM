class SportModel {
  final String nama;
  final String tanggal;
  final String keterangan;
  final String image;
  SportModel(
      {required this.nama,
      required this.tanggal,
      required this.keterangan,
      required this.image});
}

List<SportModel> listSport = [
  SportModel(
      nama: 'MU Kalah',
      tanggal: '12 Februari 2022',
      keterangan:
          'Tidak ada yang menyangka Man United bisa kebobolan cepat saat laga baru berjalan tujuh menit. Leon Bailey lepas dari kawalan Lisandro Martinez dan membawa Villa unggul. Meski sempat membalas lewat tembakan Luke Shaw yang tercatat sebagai gol bunuh diri Jacob Ramsey di menit ke-45, Villa tak mengendurkan serangan. Ramsey membalaskan kesalahannya tersebut dengan mencetak gol ketiga untuk Villa di menit ke-49.',
      image: 'assets/images/1.jpg'),
  SportModel(
      nama: 'Kopites berbahagia',
      tanggal: '9 November 2022',
      keterangan:
          'Liverpool memenangkan pertandingan sengit dan ketat menghadapi Tottenham. Dua gol dari Mohamed Salah pastikan Tottenham tak comeback, meski sempat mencetak gol juga dari Harry Kane. Salah mencetak dua gol di babak pertama. Ia tak terbendung saat menyarangkan bola di menit ke-11 dan menit ke-44.',
      image: 'assets/images/2.jpg'),
  SportModel(
      nama: 'Chelsea, Turu',
      tanggal: '13 Oktober 2022',
      keterangan:
          'Chelsea menelan kekalahan keduanya di tangan Graham Potter. Sayangnya kekalahan ini terjadi di laga sarat gengsi menghadapi Arsenal, di kandang sendiri pula. Chelsea kemasukan gol dari situasi tendangan sudut di menit ke-63. Flick header dari Gabriel Magalhaes melalui seluruh pemain Chelsea yang bertahan di kotak penalti dan dekat dengan gawang.',
      image: 'assets/images/3.jpg'),
  SportModel(
      nama: 'Vincius Junior',
      tanggal: '14 Januari 2022',
      keterangan:
          'Vincius Junior adalah salah satu penyerang paling menarik saat ini. Permainan bintang muda asal Brasil tersebut telah mengalami peningkatan besar selama setahun terakhir. Vinicius telah berkembang menjadi pemain yang hampir tak terbendung di sayap kiri. Pemain berusia 22 tahun itu adalah salah satu pemain Real Madrid yang menonjol saat ini.',
      image: 'assets/images/4.jpg'),
  SportModel(
      nama: 'Puyol Pensiun',
      tanggal: '9 Maret 2020',
      keterangan:
          'Carles Puyol adalah mantan kapten Barcelona. Bek tangguh asal Spanyol tersebut pernah membawa Blaugrana meraih banyak trofi baik di pentas domestik maupun Eropa. Puyol mencatatkan 593 pertandingan di semua kompetisi bersama Barcelona dengan menyumbang 18 gol. Dia juga berhasil memenangkan enam gelar La Liga dan tiga trofi Liga Champions.',
      image: 'assets/images/5.jpg'),
  SportModel(
      nama: 'Messi sang GOAT',
      tanggal: '12 April 2022',
      keterangan:
          'Lionel Messi bisa dibilang pesepakbola terhebat sepanjang masa. Legenda Argentina tersebut telah memenangkan Ballon d\'Or sebanyak tujuh kali dalam kariernya. Bahkan pada usia 35 tahun, Lionel Messi masih tetap tampil mengesankan di lapangan. Dia mengawali musim 2022/23 dengan cemerlang bersama PSG setelah mencetak delapan gol dan memberikan delapan assist dari 13 laga.',
      image: 'assets/images/6.jpg'),
];
