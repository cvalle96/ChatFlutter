import 'package:flutter/material.dart';
import 'package:schange/models/user_model.dart';
import 'package:schange/models/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});
  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe) {
    if (isMe) {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF219EBC), //219EBC
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      );
    }
  }

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(children: <Widget>[
        IconButton(
          icon: Icon(Icons.photo),
          iconSize: 25,
          color: Color.fromRGBO(0, 12, 48, 71),
          onPressed: () {},
        ),
        const Expanded(
        child: TextField(
          decoration: InputDecoration.collapsed(hintText: "Send a message...",
        ),
        textCapitalization: TextCapitalization.sentences,
        ),

        ),
        IconButton(
          icon: Icon(Icons.send),
          iconSize: 25,
          color: Color.fromRGBO(0, 12, 48, 71),
          onPressed: () {},
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 245, 253),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
          color: const Color.fromRGBO(0, 12, 48, 71),
        ), //colocar aqui a donde ir con el boton de la flecha atras
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(widget.user.imageUrl),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              widget.user.name,
              style: const TextStyle(
                  fontFamily: 'SF UI Text',
                  color: Color.fromRGBO(0, 12, 48, 71)),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              padding: EdgeInsets.all(20),
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == currentUser.id;
                return _chatBubble(message, isMe);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
