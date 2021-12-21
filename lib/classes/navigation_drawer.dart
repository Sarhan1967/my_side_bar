import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_side_bar/models/navigation_model.dart';

import 'collapsing_list_tile.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NavigationDrawerState();
  }
  
  
}

class NavigationDrawerState extends State <NavigationDrawer>{
  double maxWidth = 150;
  double minWidth = 75;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//Side Bar-------
      width: 250,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          //to push side Bar under App Bar-----
          SizedBox(height: 80,),
          //side Bar title ---------
          collapsingListTile(
            title: 'Sarhan',
            icon:Icons.person

          ),

          Expanded(
            child: ListView.builder(itemBuilder: (context,counter){
              return collapsingListTile(
              title: navigationItems[counter].title,
              icon: navigationItems[counter].icon


        );
        },
            //maintain vertical minu range------------
            itemCount:navigationItems.length,

            ),
          ),
            // Backward menu Item------------
            Icon(Icons.chevron_left,color: Colors.white,size: 50,),
            SizedBox(height: 80,),
        ],

      ),
    );
  }
}
