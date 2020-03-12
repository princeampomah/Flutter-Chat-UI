import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  List<String> categoriesList = ['Messages', 'Online', 'Groups', 'Recents'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Text(categoriesList[index],
                style: TextStyle(
                  color: index == selectedIndex? Colors.white : Colors.white60,
                  fontSize: index == selectedIndex? 22.0 : 18.0,
                  fontWeight: index == selectedIndex? FontWeight.bold : FontWeight.w600,
                  letterSpacing: 1.0,
                ),
                ),
              ),
            );
          }),
    );
  }
}
