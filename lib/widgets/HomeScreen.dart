import 'package:chat_ui/widgets/categories.dart';
import 'package:chat_ui/widgets/chats_widget.dart';
import 'package:chat_ui/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 3.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
              title: Text('Chat UI Demo',
                style: TextStyle(
                letterSpacing: 1.0,
              ),
              ),
              centerTitle: true,
              elevation: 0.0,
              floating: false,
              pinned: false,
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Categories(),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
                      ),
                      child: Column(
                        children: <Widget>[
                          FavoriteContacts(),
                          SizedBox(
                            height: 5.0,
                          ),
                          Chats(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
