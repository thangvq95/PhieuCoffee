class Branch{
  final String id;
  final String title;
  final String desc;
  final List<String> urls;
  final address;

  Branch(this.id, {this.title, this.desc, this.urls, this.address});


  static List<Branch> branch = [
    Branch('1',
        title: 'Giếng Nước', desc: 'Chi nhánh chính', address: '',
      urls: [
        'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409031/giengnuoc/giengnuoc_3_ufsfiz.jpg',
        'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409030/giengnuoc/giengnuoc_2_zhkfdp.jpg',
        'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409029/giengnuoc/giengnuoc_1_c0obhy.jpg',
      ]),
    Branch(
        '2',
        title: 'Song hành', desc: '', urls: [
      'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409034/songhanh/songhanh_3_z7pgas.jpg',
      'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409033/songhanh/songhanh_2_d8dwcj.jpg',
      'https://res.cloudinary.com/dged6vxpd/image/upload/v1585409033/songhanh/songhanh_1_zo9vkf.jpg'
    ], address: ''),
  ];
}

