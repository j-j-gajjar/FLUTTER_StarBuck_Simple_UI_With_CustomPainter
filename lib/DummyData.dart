List dummyData = [
  DummyData(
    id: 1,
    name: "ButterScotch",
    subtitle: "ButterScotch coffee jelly frappuccino",
    img: "assets/image1.png",
    subMain: "Chocolate Cookie Crumble Crème Frappuccino®",
    subSub:
        "Mocha sauce and Frappuccino® chips are blended with milk and ice, layered on top of whipped cream and chocolate cookie crumble and topped with vanilla whipped cream, mocha drizzle and even more chocolate cookie crumble. These layers ensure each sip is as good as the last; all the way to the end.",
  ),
  DummyData(
    id: 2,
    name: "Chocolate",
    subtitle: "Chocolate coffee jelly frappuccino",
    img: "assets/image2.png",
    subMain: "Caramel Ribbon Crunch Frappuccino® Blended Beverage",
    subSub:
        "Buttery caramel syrup blended with coffee, milk and ice, then topped with a layer of dark caramel sauce, whipped cream, caramel drizzle and a crunchy caramel-sugar topping—oh-so-beautifully delicious.",
  ),
  DummyData(
    id: 3,
    name: "Venilla",
    subtitle: "Venilla coffee jelly frappuccino",
    img: "assets/image1.png",
    subMain: "Caramel Frappuccino® Blended Beverage",
    subSub:
        "Caramel syrup meets coffee, milk and ice for a rendezvous in the blender, while whipped cream and buttery caramel sauce layer the love on top. To change things up, try it affogato-style with a hot espresso shot poured right over the top.",
  ),
];

class DummyData {
  final name;
  final subtitle;
  final img;
  final id;
  final subMain;
  final subSub;

  DummyData(
      {this.subMain, this.subSub, this.id, this.name, this.subtitle, this.img});
}
