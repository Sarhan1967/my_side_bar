import 'package:flutter/material.dart';
import 'navigation_drawer.dart';


import '../theme.dart';

class collapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;


  collapsingListTile({@required this.title,@required this.icon});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return collapsingListTileState();
  }

}

class collapsingListTileState extends State <collapsingListTile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //to push side Bar under App Bar-----
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      child: Row(
        children:<Widget> [
          Icon(widget.icon,color: Colors.white30,),
          SizedBox(width: 10,),
          Text(widget.title,style: listTitleDefaultTextStyle,),
        ],

      ),
    );
  }


}












/**
class CollapsingListTile extends StatefulWidget{

  final String title;
  final IconData icon;
  //final AnimationController animationController;
  //final bool isSelected;
  //final Function onTap;

/*  CollapsingListTile({@required this.title,@required this.icon,
    @required this.animationController, this.isSelected = false, this.onTap
  });
*/
  CollapsingListTile({@required this.title,@required this.icon});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CollapsingListTileState();
  }
}

class CollapsingListTileState extends State<CollapsingListTile>{

  Animation<double> _widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    _widthAnimation = Tween <double> (begin: 250, end: 75).animate(widget.animationController);
    sizedBoxAnimation = Tween <double> (begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.isSelected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: _widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? selectedColor : Colors.white30,
              size: 37.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (_widthAnimation.value >= 190)
                ? Text(widget.title,
                style: widget.isSelected
                    ? listTitleSelectedTextStyle
                    : listTitleDefaultTextStyle)
                : Container()
          ],
        ),
      ),
    );
  }
}
    */