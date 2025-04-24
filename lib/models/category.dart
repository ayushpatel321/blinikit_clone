class Category {
  final String id;
  final String name;
  final String imageUrl;

  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

List<Category> dummyCategories = [
  Category(
    id: '1',
    name: 'Fruits & Vegetables',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/06/02/18/24/fruit-2367029_1280.jpg',
  ),
  Category(
    id: '2',
    name: 'Dairy & Breakfast',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg',
  ),
  Category(
    id: '3',
    name: 'Snacks',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg',
  ),
  Category(
    id: '4',
    name: 'Cold Drinks',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg',
  ),
  Category(
    id: '5',
    name: 'Bakery',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438_1280.jpg',
  ),
  Category(
    id: '6',
    name: 'Home Care',
    imageUrl: 'https://imgs.search.brave.com/RACslY47_-7ZxhvC_8ljKE4nbYI0gWUswCNMmONR5jo/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ycGJvODZu/a213ZjUvNTloZGo5/d200QXlzMGFiY21i/bDJDNy83ZDVhZTUy/ZThjOWYwNTI3OWZh/MzA0YWFlNWNiMmU4/ZC9HYWluX2J5X3R5/cGVfaGVyb180OTB4/MzE5LnBuZz9mbT1q/cGcmZmw9cHJvZ3Jl/c3NpdmU',
  ),
  Category(
    id: '7',
    name: 'Personal Care',
    imageUrl: 'https://imgs.search.brave.com/mSiGrkS5DrLuykNet4GOqrT26ckMYfbiBcb2m6m-Eu8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/bmF0bGFsbGVyZ3ku/Y29tL3B1Yi9tZWRp/YS9jYXRhbG9nL2Nh/dGVnb3J5L3NraW5j/YXJlX1BlcnNvbmFs/X0NhcmUucG5n',
  ),
  Category(
    id: '8',
    name: 'Baby Care',
    imageUrl: 'https://imgs.search.brave.com/hp7iLzuG3-gzBn2mHIjbJeIxbHQBcmIRn_12iDQg5Jk/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9i/ZWF1dHktcHJvZHVj/dC1zdGlsbC1saWZl/XzIzLTIxNDc4MTc2/NzIuanBnP3NlbXQ9/YWlzX2h5YnJpZCZ3/PTc0MA',
  ),
];