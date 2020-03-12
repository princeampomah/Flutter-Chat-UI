import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/chat_screen.dart';
import 'package:flutter/material.dart';


class FavoriteContacts extends StatefulWidget {

  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  final String favoriteContacts = 'Favorite Contacts';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(favoriteContacts, style:
                  TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),),
                IconButton(
                  icon: Icon(Icons.more_horiz,
                    color: Colors.black54,
                  ),
                  onPressed: (){},
                )
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 100.0,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favourites.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context) => ChatScreen(user: favourites[index],),
                  )),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(favourites[index].imageUrl),
                          radius: 30.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(favourites[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black54
                      ),
                      ),
                    ],
                  ),
                );
              }
            ),
          ),
        ],

      ),
    );
  }
}
