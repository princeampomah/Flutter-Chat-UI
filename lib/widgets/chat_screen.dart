import 'package:chat_ui/models/User_model.dart';
import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  _buildMessage(Message message, bool isMe) {

    final Container msg = Container(
        width: MediaQuery.of(context).size.width * 0.72,
        margin: isMe
            ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
            : EdgeInsets.only(top: 8.0, bottom: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
          borderRadius: isMe
              ? BorderRadius.horizontal(left: Radius.circular(15.0))
              : BorderRadius.horizontal(right: Radius.circular(15.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.time,
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(message.text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),),
          ],
        )
    ) ;

    if(isMe){
      return msg;
    }

    return Row(
      children: <Widget>[
        msg,
        IconButton(
          onPressed: (){},
          icon: message.isLiked? Icon(Icons.favorite) : Icon(Icons.favorite_border,),
          color: message.isLiked? Theme.of(context).primaryColor: Colors.blueGrey,
        )
      ],
    );
  }

  _composeMessage(){
    return Container(
      height: 70.0,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.insert_emoticon,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Theme.of(context).accentColor,
              ),
              child: TextField(
                onChanged: (value){},
                textCapitalization: TextCapitalization.sentences,
                cursorColor: Theme.of(context).primaryColor,
                decoration:
                InputDecoration.collapsed(
                  hintText: 'Type your message here...',
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send,
                color: Theme.of(context).primaryColor),
            splashColor: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(widget.user.imageUrl),
              backgroundColor: Theme.of(context).primaryColor,
              radius: 23,
            ),
            SizedBox(width: 13.0,),
            Text(
              widget.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.9,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 3.0),
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _composeMessage(),
          ],
        ),
      ),
    );
  }
}
