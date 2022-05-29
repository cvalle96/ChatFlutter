class User {
  final int id;
  final String name;
  final String imageUrl;
  

  User({
    required this.id,
    required this.name,
    required this.imageUrl,    
  });
}

//Usuario Principal
final User currentUser = User(
  id: 0,
  name:'Carlos',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',  
);
  
//Usuarios Chat
final User juan = User(
  id: 1,
  name:'Juan',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User miguel = User(
  id: 2,
  name:'Miguel',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User sergio = User(
  id: 3,
  name:'Sergio',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User jorge = User(
  id: 4,
  name:'Jorge',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User alfonso = User(
  id: 5,
  name:'Alfonso',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User ale = User(
  id: 6,
  name:'Alejandra',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User izarra = User(
  id: 7,
  name:'Izarra',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);

final User sara = User(
  id: 8,
  name:'Sara',
  imageUrl: 'https://www.clarin.com/img/2016/04/05/HJxaM4fy4g_340x340.jpg',
);