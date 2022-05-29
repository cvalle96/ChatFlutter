import 'package:schange/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool noLeido;
  final String mensajesNoLeidos;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.noLeido,
    required this.mensajesNoLeidos,
  });
}

List<Message> chats = [
  Message(
    sender: juan,
    time: '5:30 PM',
    text: 'Texto prueba',
    noLeido: true,
    mensajesNoLeidos: '5',
  ),
  Message(
    sender: jorge,
    time: '4:30 PM',
    text: 'Texto prueba',
    noLeido: true,
    mensajesNoLeidos: '3',
  ),
  Message(
    sender: sergio,
    time: '3:30 PM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: ale,
    time: '2:30 PM',
    text: 'Texto prueba',
    noLeido: true,
    mensajesNoLeidos: '2',
  ),
  Message(
    sender: alfonso,
    time: '1:30 PM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: miguel,
    time: '12:30 PM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: ale,
    time: '11:30 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: juan,
    time: '12:45 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: miguel,
    time: '12:45 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: sergio,
    time: '12:45 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: alfonso,
    time: '12:45 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: jorge,
    time: '12:45 AM',
    text: 'Texto prueba',
    noLeido: false,
    mensajesNoLeidos: '0',
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: sergio,
    time: '5:30 PM',
    text: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
    noLeido: true,
    mensajesNoLeidos: '5',
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'We could surely handle this mess much easily if you were here.',
    noLeido: true,
    mensajesNoLeidos: '3',
  ),
  Message(
    sender: izarra,
    time: '3:45 PM',
    text: 'Take care of peter. Give him all the protection & his aunt.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: miguel,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Yes Tony!',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: alfonso,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: izarra,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: juan,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: miguel,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
  Message(
    sender: juan,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    noLeido: true,
    mensajesNoLeidos: '0',
  ),
];
