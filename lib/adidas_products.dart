class Adidasshoes {
  final int id ;
  final String prix ;
  final String image ;
  final String name ;

  Adidasshoes({required this.id,required this.prix,required this.image,required this.name});
}

List<Adidasshoes> adidasdata = [
  Adidasshoes(id: 1, prix: '35\$', image: 'assets/adidas/adidas1.png', name: "Mens Run"),
  Adidasshoes(id: 2, prix: '22\$', image: 'assets/adidas/adidas2.png', name: "Mens Sleetwalk"),
  Adidasshoes(id: 3, prix: '74\$', image: 'assets/adidas/adidas3.png', name: "Everyset Shoes"),
  Adidasshoes(id: 4, prix: '56\$', image: 'assets/adidas/adidas4.png', name: "Carnival Shoes"),
  Adidasshoes(id: 5, prix: '65\$', image: 'assets/adidas/adidas5.png', name: "Black Skate"),
  Adidasshoes(id: 6, prix: '72\$', image: 'assets/adidas/adidas6.png', name: "Adidas Womens"),
];