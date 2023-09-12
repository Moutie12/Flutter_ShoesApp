class Shoes {
  final int id ;
  final String prix ;
  final String image ;
  final String name ;

  Shoes({required this.id,required this.prix,required this.image,required this.name});
}

List<Shoes> shoesdata = [
  Shoes(id: 1, prix: '90\$', image: 'assets/images/shoes1.png', name: "Athletic Shoes"),
  Shoes(id: 2, prix: '55\$', image: 'assets/images/jordan.png', name: "Air Jordan 11"),
  Shoes(id: 3, prix: '67\$', image: 'assets/images/nike.png', name: "Nike Air Max"),
  Shoes(id: 4, prix: '88\$', image: 'assets/images/baskets.png', name: "Baskets Jordan"),
];