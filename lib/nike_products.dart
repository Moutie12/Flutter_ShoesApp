class Nikeshoes {
  final int id ;
  final String prix ;
  final String image ;
  final String name ;

  Nikeshoes({required this.id,required this.prix,required this.image,required this.name});
}

List<Nikeshoes> nikedata = [
  Nikeshoes(id: 1, prix: '15\$', image: 'assets/nike/nike1.png', name: "Athletic Shoes"),
  Nikeshoes(id: 2, prix: '20\$', image: 'assets/nike/nike2.png', name: "Air Jordan 11"),
  Nikeshoes(id: 3, prix: '26\$', image: 'assets/nike/nike3.png', name: "Nike Air Max"),
  Nikeshoes(id: 4, prix: '55\$', image: 'assets/nike/nike4.png', name: "Baskets Jordan"),
  Nikeshoes(id: 5, prix: '63\$', image: 'assets/nike/nike5.png', name: "Baskets Jordan"),
  Nikeshoes(id: 6, prix: '70\$', image: 'assets/nike/nike6.png', name: "Nike Jordan"),
  Nikeshoes(id: 7, prix: '70\$', image: 'assets/nike/nike7.png', name: "Nike baskets"),
  Nikeshoes(id: 8, prix: '70\$', image: 'assets/nike/nike8.png', name: "Air Force"),
  Nikeshoes(id: 9, prix: '70\$', image: 'assets/nike/nike9.png', name: "Nike Sport"),
];