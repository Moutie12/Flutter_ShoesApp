class Pumashoes {
  final int id ;
  final String prix ;
  final String image ;
  final String name ;

  Pumashoes({required this.id,required this.prix,required this.image,required this.name});
}

List<Pumashoes> pumadata = [
  Pumashoes(id: 1, prix: '25\$', image: 'assets/puma/puma1.png', name: "Puma Mens"),
  Pumashoes(id: 2, prix: '31\$', image: 'assets/puma/puma2.png', name: "Softride Enzo"),
  Pumashoes(id: 3, prix: '33\$', image: 'assets/puma/puma3.png', name: "Unisex-Adult"),
  Pumashoes(id: 4, prix: '99\$', image: 'assets/puma/puma4.png', name: "PUMA Singapore"),
  Pumashoes(id: 5, prix: '60\$', image: 'assets/puma/puma5.png', name: "Roma Basic"),
  Pumashoes(id: 6, prix: '77\$', image: 'assets/puma/puma6.png', name: "Puma X-Cell"),
  Pumashoes(id: 7, prix: '99\$', image: 'assets/puma/puma7.png', name: "Puma Golf"),
  Pumashoes(id: 8, prix: '59\$', image: 'assets/puma/puma8.png', name: "Running Shoes"),
  Pumashoes(id: 9, prix: '31\$', image: 'assets/puma/puma9.png', name: "Redon Bungee"),
];