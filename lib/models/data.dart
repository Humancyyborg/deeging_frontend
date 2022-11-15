//INITILIASE CURRENT USER
import 'package:deeging_frontend/models/message.dart';
import 'package:deeging_frontend/models/message_request.dart';
import 'package:deeging_frontend/models/user.dart';

final currentUser = User(
  id: 1,
  username: '@deeging',
  firstName: 'Lawrence',
  lastName: 'Bishop',
  lookingFor: 'I am a software developer',
  sex: 'Male',
  avatar: 'assets/images/photo1.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva University',
);

//CREATE INSTANCE OF DIFFERENT USERS
final david = User(
  id: 2,
  username: '@david',
  firstName: 'Lawrence',
  lastName: 'David',
  lookingFor: 'I am a software developer',
  sex: 'Male',
  avatar: 'assets/images/photo2.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'San Francisco University',
);

final parker = User(
  id: 3,
  username: '@parker',
  firstName: 'Parker',
  lastName: 'Delapena',
  lookingFor: 'I am a software',
  sex: 'Male',
  avatar: 'assets/images/photo3.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva UUniversity',
);

final jacob = User(
  id: 4,
  username: '@deeging',
  firstName: 'Rotich',
  lastName: 'Jacob',
  lookingFor: 'I am a software',
  sex: 'Female',
  avatar: 'assets/images/photo4.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Stanford University',
);

final theresa = User(
  id: 5,
  username: '@theresa',
  firstName: 'Theresa',
  lastName: 'Webbson',
  lookingFor: 'I am a software',
  sex: 'Female',
  avatar: 'assets/images/photo5.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva University',
);

final webb = User(
  id: 6,
  username: '@webb',
  firstName: 'Webb',
  lastName: 'Adelaide',
  lookingFor: 'I am a Design junky',
  sex: 'Male',
  avatar: 'assets/images/photo6.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva University',
);
final calvin = User(
  id: 7,
  username: '@calvin',
  firstName: 'Calvin',
  lastName: 'Philip',
  lookingFor: 'I am a software',
  sex: 'Female',
  avatar: 'assets/images/photo7.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Aramaja University',
);

final kelvin = User(
  id: 8,
  username: '@kelvin',
  firstName: 'Kelvin',
  lastName: 'Harrieta',
  lookingFor: 'I am a hardtech coach',
  sex: 'Male',
  avatar: 'assets/images/photo8.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva University',
);

final bell = User(
  id: 9,
  username: '@bell',
  firstName: 'Bell',
  lastName: 'Dragon',
  lookingFor: 'I am a software',
  sex: 'Male',
  avatar: 'assets/images/photo9.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva University',
);
final joy = User(
  id: 10,
  username: '@joy',
  firstName: 'Lawrence',
  lastName: 'Adekunle',
  lookingFor: 'I am a software',
  sex: 'Male',
  avatar: 'assets/images/photo10.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Minerva UUniversity',
);

final emem = User(
  id: 11,
  username: '@emem',
  firstName: 'Xavier',
  lastName: 'Emem',
  lookingFor: 'I am a software',
  sex: 'Female',
  avatar: 'assets/images/photo11.jpg',
  email: 'daniel@deeging.com',
  neighborhood: 'San Francisco',
  currentSchool: 'Caltech',
);

//PUT STUDENTS IN LIST
final List<User> students = [
  david,
  parker,
  jacob,
  theresa,
  webb,
  calvin,
  kelvin,
  bell,
  joy,
  emem
];

//INITIALISE HOME CHAT MESSAGE FROM USERS
final List<Message> chats = [
  Message(
    sender: david,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: parker,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? i see you are really close to my area?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jacob,
    time: '3:30 PM',
    text: 'Hey, we can study math together, I am 4 bloks away?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: theresa,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? hope you will be availble 4 d game?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: webb,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: calvin,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: kelvin,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: bell,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: joy,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: emem,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

//INITILAISE MESSAGE REQUEST FROM USERS

//INITILAISE MESSAGE REQUEST FROM USERS
final List<MessageRequest> messageRequests = [
  MessageRequest(
    sender: david,
    time: '2mins',
    text: 'Message Request from David',
    isSeen: true,
  ),
  MessageRequest(
    sender: parker,
    time: '2d',
    text: 'Message Request from Parker',
    isSeen: true,
  ),
  MessageRequest(
    sender: jacob,
    time: '6d',
    text: 'Message Request from Jacob',
    isSeen: false,
  ),
  MessageRequest(
    sender: theresa,
    time: '30mins',
    text: 'Message Request from Theresa',
    isSeen: true,
  ),
  MessageRequest(
    sender: webb,
    time: '40mins',
    text: 'Message Request from Webb',
    isSeen: false,
  ),
  MessageRequest(
    sender: calvin,
    time: '1w',
    text: 'Message Request from Calvin',
    isSeen: true,
  ),
  MessageRequest(
    sender: kelvin,
    time: '2w',
    text: 'Message Request from Kelvin',
    isSeen: false,
  ),
  MessageRequest(
    sender: bell,
    time: '3w',
    text: 'Message Request from Bell',
    isSeen: false,
  ),
  MessageRequest(
    sender: joy,
    time: '5w',
    text: 'Message Request from Joy',
    isSeen: false,
  ),
  MessageRequest(
    sender: emem,
    time: '7w',
    text: 'Message Request from Emem',
    isSeen: false,
  ),
];
//INITILISE SCREEN CHAT MESSAGE WITH A USER

List<Message> messages = [
  Message(
    sender: parker,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? I noticed you are 4 block away?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'yea you too, see you like maths...I need a maths genius',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: parker,
    time: '3:45 PM',
    text: 'hmmmm...not quite, abut I will accept the compliment ?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: parker,
    time: '3:15 PM',
    text: 'Let me know you wanna grab a bite @iya sikira?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! yea, definitely let me know what time works?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: parker,
    time: '2:00 PM',
    text: 'I ate so much food today. maybe tomorrow @2?',
    isLiked: false,
    unread: true,
  ),
];


//TO DO
//CLEAN UP THE MOCK DATA
//ADD ASSET TO FILES, E.G PHOTOS