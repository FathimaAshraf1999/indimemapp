class CategoryButton {
  final String id;
  final String categoryName;

  const CategoryButton({required this.id, required this.categoryName});
}

const categories = [
  CategoryButton(id: '01', categoryName: 'Comedy'),
  CategoryButton(id: '02', categoryName: 'Sports'),
  CategoryButton(id: '03', categoryName: 'horror'),
  CategoryButton(id: '04', categoryName: 'Movies'),
  CategoryButton(id: '05', categoryName: 'Drama'),
  CategoryButton(id: '06', categoryName: 'Religion')
];
