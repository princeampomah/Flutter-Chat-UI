import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';


class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: ()=> Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ChatScreen(user: chat.sender,)
                    )
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 5.0, bottom : 1.0 , right: 9.0),
                  decoration: BoxDecoration(
                    color:  chat.unRead? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                  child: Container(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 28.0,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                            backgroundColor: Colors.white,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.55,
                                    child: Text(
                                      chat.sender.name,
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.55,
                                    child: Text(
                                      chat.text,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(chat.time,
                              style: TextStyle(
                                fontSize: 10.0,

                              ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            chat.unRead? Container(
                                height: 20.0,
                                width: 38.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                  alignment: Alignment.center,
                                  child: Text('New',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                              ) : Text(''),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
