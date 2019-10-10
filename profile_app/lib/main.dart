import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350,
            top: MediaQuery.of(context).size.height/5,
            left: MediaQuery.of(context).size.width/12,
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow:[ BoxShadow(
                     
                    blurRadius: 7.0,
                      color: Colors.black
                    )],     
                    image: DecorationImage( 
       image: NetworkImage("https://avatars3.githubusercontent.com/u/20722807?s=460&v=4"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                ),
                SizedBox(height: 90,),
                Text("Ajay Sharma",
                style: TextStyle(
                  fontFamily: 'MonteSerrat',
                  fontSize: 35,
                  fontWeight: FontWeight.bold

                ),),
                SizedBox(height: 15,),
                   Text("Flutter & ML Developer",
                style: TextStyle(
                  fontFamily: 'MonteSerrat',
                  fontSize: 15,
                  fontStyle: FontStyle.italic

                ),),
                SizedBox(height: 25,),

                Container(
                 
                  height: 40,
                  width: 100,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green.shade700,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        
                      },
                      child: Center(
                        child: Text("Edit name",
                        style:TextStyle(color: Colors.white,fontFamily:'MonteSerrat',fontSize: 18)),
                      ),
                    ),
                  ),
                ),
                           SizedBox(height: 25,),

                Container(
                 
                  height: 40,
                  width: 100,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        
                      },
                      child: Center(
                        child: Text("Log out",
                        style:TextStyle(color: Colors.white,fontFamily:'MonteSerrat',fontSize: 18)),
                      ),
                    ),
                  ),
                )



              ],
            ),
          )
        ],
      ),
      
    );
  }
}


class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height/1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }

}