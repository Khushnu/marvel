class InfoModel{
  final String icon; 
  final String title; 
  final String cond; 


  InfoModel({required this.icon, required this.cond, required this.title});
}

List<InfoModel> infolist = [
  InfoModel(icon: 'images/rainy.png', cond: 'cloudy', title: '19 C'),
  InfoModel(icon: 'images/calendar.png', cond: 'Mon', title: '30 JAN'),
  InfoModel(icon: 'images/clock.png', cond: 'GMT+4', title: '8:45 PM'),
  InfoModel(icon: 'images/money.png', cond: '1\$ = 3.67AED', title: 'AED'),
];