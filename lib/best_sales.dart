class Bestsales {
  final int id ;
  final String prix ;
  final String image ;
  final String name ;

  Bestsales({required this.id,required this.prix,required this.image,required this.name});
}

List<Bestsales> bestsalesdata = [
  Bestsales(id: 1, prix: '15\$', image: 'assets/puma/puma1.png', name: "Athletic Shoes"),
  Bestsales(id: 2, prix: '20\$', image: 'assets/nike/nike1.png', name: "Air Jordan 11"),
  Bestsales(id: 3, prix: '26\$', image: 'assets/adidas/adidas1.png', name: "Nike Air Max"),
  Bestsales(id: 4, prix: '55\$', image: 'assets/adidas/adidas5.png', name: "Baskets Jordan"),
  Bestsales(id: 5, prix: '63\$', image: 'assets/puma/puma5.png', name: "Baskets Jordan"),
];