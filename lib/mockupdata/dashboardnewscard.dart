class NewsCard {
  int id;
  String name;
  String img;

  NewsCard({
    required this.img,
    required this.name,
    required this.id,
  });
}

List<NewsCard> demoNewsCard = [
  NewsCard(id: 1, name: 'DAILY DEAL', img: 'assets/images/newsimg/news1.jpg'),
  NewsCard(id: 2, name: 'HOT LIST', img: 'assets/images/newsimg/news2hotlist.png'),
  NewsCard(id: 3, name: 'FASHION TREASURE', img: 'assets/images/newsimg/news2treasure.jpg'),
  NewsCard(id: 4, name: 'PLANET POSITIVE', img: 'assets/images/newsimg/newssell.jpg'),
  NewsCard(id: 5, name: 'SELL-IT', img: 'assets/images/newsimg/planetpositive.jpg'),
];
