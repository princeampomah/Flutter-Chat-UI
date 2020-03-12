
import 'User_model.dart';


class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unRead;

  Message({this.sender, this.time, this.text, this.isLiked, this.unRead});


}


//Me as a User
final User currentUser = User(
    id: 0,
    name: 'Prince',
    imageUrl: 'assets/images/bravo.jpg'
);

// Other Users
final User boom = User(
    id: 1,
    name: 'Owuraku',
    imageUrl: 'assets/images/boom.JPG'
);

final User kwadwo = User(
    id: 2,
    name: 'kwadwo',
    imageUrl: 'assets/images/kwadwo.jpg'
);

final User kwame = User(
    id: 3,
    name: 'Kwame',
    imageUrl: 'assets/images/kwame.jpg'
);

final User francisca = User(
    id: 4,
    name: 'Francisca',
    imageUrl: 'assets/images/francisca.jpg'
);

final User sandra = User(
    id: 5,
    name: 'Sandra',
    imageUrl: 'assets/images/sandraone.jpg'
);

final User priscy = User(
    id: 6,
    name: 'Priscy',
    imageUrl: 'assets/images/priscy.jpg'
);


// Favorite List
List<User> favourites = [currentUser, boom, kwadwo, sandra, priscy, kwame, francisca, sandra, priscy, kwame, francisca];

// Message List Chat on the Home Screen
List<Message> chats = [
  Message(sender: sandra, time: '6:30 AM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
  Message(sender: boom, time: '1:00 PM', text: 'Yo bravo when are you visiting me because I miss you soo much', isLiked: true, unRead: false),
  Message(sender: kwadwo, time: '5:30 PM', text: 'I will apply for the job at Olam', isLiked: false, unRead: true),
  Message(sender: kwame, time: '12:10 AM', text: 'Will you come to legon today?', isLiked: false, unRead: false),
  Message(sender: francisca, time: '6:30 AM', text: 'You this guy paa....', isLiked: true, unRead: false),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: false),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
  Message(sender: boom, time: '1:00 PM', text: 'Yo bravo when are you visiting me because I miss you soo much', isLiked: true, unRead: false),
  Message(sender: kwadwo, time: '5:30 PM', text: 'I will apply for the job at Olam', isLiked: false, unRead: true),
  Message(sender: kwame, time: '12:10 AM', text: 'Will you come to legon today?', isLiked: false, unRead: false),

];


// Message List Chat on the Chat Screen
List<Message> messages= [
  Message(sender: sandra, time: '6:30 AM', text: 'Hey, Prince.?', isLiked: true, unRead: true),
  Message(sender: currentUser, time: '6:36 AM', text: 'I\'ll report on next week saturday ', isLiked: false, unRead: true),
  Message(sender: boom, time: '1:00 PM', text: 'Yo bravo, what\'s up', isLiked: true, unRead: false),
  Message(sender: currentUser, time: '2:30 AM', text: 'it is gonna be awesome Henry?', isLiked: true, unRead: true),
  Message(sender: kwame, time: '12:10 AM', text: 'Will you come to legon today?', isLiked: false, unRead: true),
  Message(sender: currentUser, time: '6:30 AM', text: 'You this guy....', isLiked: true, unRead: false),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
  Message(sender: priscy, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: false),
  Message(sender: kwame, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: true, unRead: true),
  Message(sender: currentUser, time: '4:19 PM', text: 'Hey, Prince. How are you doing..?', isLiked: false, unRead: true),
];
