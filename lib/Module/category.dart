class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "All",
    image: "images/all.jpeg",
  ),
  Category(
    title: "Women",
    image: "images/women.jpeg",
  ),
  Category(
    title: "Men",
    image: "images/men.jpeg",
  ),
  Category(
    title: "Shoes",
    image: "images/shoes.jpeg",
  ),
  Category(
    title: "Jewelry",
    image: "images/jewelry.jpeg",
  ),
];
