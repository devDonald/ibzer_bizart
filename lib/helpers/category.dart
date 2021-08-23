class Book {
  final String name;
  final String teacher;
  final String image;
  final String link;

  Book(this.name, this.teacher, this.image, this.link);
}

List<Book> books = categoriesData
    .map((item) => Book(
          item['name'],
          item['teacher'],
          item['image'],
          item['link'],
        ))
    .toList();

var categoriesData = [
  {
    "name": "Nursery 1 Maths",
    'teacher': 'Mustapha S. Yakubu',
    'image': "images/1.png",
    "link": 'assets/nursery1maths.pdf'
  },
  {
    "name": "Nursery 2 Maths",
    'teacher': "Akinjide Okanlawon",
    'image': "images/0.png",
    "link": 'assets/nur2maths.pdf'
  },
  {
    "name": "Nursery 3 Maths",
    'teacher': "Akinjide Okanlawon",
    'image': "images/banner1.jpeg",
    "link": 'assets/nur2maths.pdf'
  },
];
