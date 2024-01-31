class webviews {
  final int id;
  final String img;
  final String title;
  final String url;

  webviews({
    required this.id,
    required this.img,
    required this.title,
    required this.url,
  });
}

List<webviews> all_webviews = [
  webviews(
    id: 1,
    img: 'assets/img/photo/01.jpg',
    title: 'ข้อมูลคณะ',
    url: 'https://kuse.csc.ku.ac.th/departments-information',
  ),
  webviews(
    id: 2,
    img: 'assets/img/photo/02.jpg',
    title: 'บุคลากรคณะ',
    url: 'https://kuse.csc.ku.ac.th/departments-information',
  ),
  webviews(
    id: 3,
    img: 'assets/img/photo/03.jpg',
    title: 'ประกาศ/ข่าวสาร',
    url: 'https://kuse.csc.ku.ac.th/departments-information',
  ),
  webviews(
    id: 4,
    img: 'assets/img/photo/04.jpg',
    title: 'ติดต่อเรา',
    url: 'https://kuse.csc.ku.ac.th/departments-information',
  ),
];
