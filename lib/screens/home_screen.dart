import 'package:flutter/material.dart';
import 'package:schange/models/message_model.dart';
import 'package:schange/screens/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
            color: const Color.fromRGBO(0, 12, 48, 71),
          ), //colocar aqui a donde ir con el boton de la flecha atras
          title: const Text(
            'Messages',
            style: TextStyle(
                fontFamily: 'SF UI Text', color: Color.fromRGBO(0, 12, 48, 71)),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext content, int index) {
            final Message chat = chats[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                  content,
                  MaterialPageRoute(
                      builder: (_) => ChatScreen(user: chat.sender,
                          ))),
              child: Container(
                  color: chat.noLeido
                      ? const Color.fromARGB(255, 240, 245, 253)
                      : null,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 8,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: chat.noLeido
                            ? BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(40)),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(251, 33, 157, 188),
                                ),
                                //shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                  ),
                                ],
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(chat.sender.imageUrl),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  chat.sender.name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'SFUIText',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  chat.time,
                                  style: const TextStyle(
                                    fontFamily: 'SFUIText',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    chat.text,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(175, 106, 138, 186),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  chat.noLeido
                                      ? Container(
                                          margin:
                                              const EdgeInsets.only(left: 200),
                                          width: 18,
                                          height: 18,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  251, 33, 157, 188),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4.0))),
                                          child: Center(
                                              child: Text(
                                            chat.mensajesNoLeidos,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                            textAlign: TextAlign.center,
                                          )),
                                        )
                                      : Container(
                                          child: null,
                                        )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            );
          },
        ));
  }
}
