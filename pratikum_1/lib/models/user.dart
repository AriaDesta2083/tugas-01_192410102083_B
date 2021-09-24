class User {
  final int id;
  final String nama;
  final dynamic email;
  final String nohp;
  final String imageUrl;

  User(
      {required this.id,
      required this.nama,
      required this.email,
      required this.nohp,
      required this.imageUrl});

  static List<User> getUser() {
    return <User>[
      User(
          id: 1,
          nama: 'Galeh Pedia',
          email: 'galeh@mail.com',
          nohp: '081234567891',
          imageUrl: 'assets/images/icardi.png'),
      User(
          id: 2,
          nama: 'Aria Desta Prabu',
          email: 'aria@mail.com',
          nohp: '081536273654',
          imageUrl: 'assets/images/Ar.png'),
      User(
          id: 3,
          nama: 'Agel Badmood',
          email: 'agel@mail.com',
          nohp: '087483628298',
          imageUrl: 'assets/images/vinicius.png'),
      User(
          id: 4,
          nama: 'Nio Abhirama',
          email: 'nio@mail.com',
          nohp: '086565637387',
          imageUrl: 'assets/images/lukaku.png'),
      User(
          id: 5,
          nama: 'Desta Aria Prabu',
          email: 'desta@mail.com',
          nohp: '081234567891',
          imageUrl: 'assets/images/desta.png'),
      User(
          id: 6,
          nama: 'Panji Panjol',
          email: 'panji@mail.com',
          nohp: '087364829876',
          imageUrl: 'assets/images/chiesa.png'),
      User(
          id: 7,
          nama: 'Akmal Poppoo',
          email: 'akmal@mail.com',
          nohp: '081647382973',
          imageUrl: 'assets/images/muller.png'),
      User(
          id: 8,
          nama: 'Namaaaaaaaaa lebihhhhh dariiiiiii tiga puluh',
          email: 'nama@mail.com',
          nohp: '088465738292',
          imageUrl: 'assets/images/default.png'),
      User(
          id: 9,
          nama: 'Prabu Desta Aria',
          email: 'nama@mail.com',
          nohp: '088465738292',
          imageUrl: 'assets/images/prabu.png'),
      User(
          id: 10,
          nama: 'Aria Desta Aria',
          email: 'nama@mail.com',
          nohp: '088465738292',
          imageUrl: 'assets/images/aria.png')
    ];
  }
}
