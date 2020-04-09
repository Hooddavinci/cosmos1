import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main()=> runApp(MaterialApp(home: Home(),));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left:12.0,right: 12.0,top: 30.0,bottom: 8.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Top",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                ),

                Text("Sofa",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0,
                  ),
                ),

                Text("Chairs",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0,
                  ),
                ),

                Text("tata",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0,
                  ),
                ),
              ],

            ),
          ),
          Container(
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              children: List.generate(9, (int i ){
                return _Tile(i);
              }),
              staggeredTiles: List.generate(9, (int index) {
                return StaggeredTile.fit(2);
              }),
            ),
          ),
      ]),
    ),
    );
  }
}
class _Tile extends StatelessWidget {

  _Tile(this.i);
  final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        child: Image.asset("assets/$i.jpg"),
      ),
    );
  }


}



