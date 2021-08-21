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
    'teacher': 'Mr John Audu',
    'image': "images/banner1.jpeg"
  },
  {
    "name": "The Namesake",
    'teacher': "Sunday Abdul",
    'image': "images/banner1.jpeg"
  },
  {
    "name": "State of wonder",
    'teacher': "Martha Bulus",
    'image': "images/banner1.jpeg"
  },
];
