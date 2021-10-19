import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:genshin_impact_album_info/genshinAlbumList.dart';
import 'package:genshin_impact_album_info/homeExample.dart';
 

class DetailAlbum extends StatelessWidget {
  final GenshinAlbum place;

  DetailAlbum({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(place.imageAsset),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0), bottomRight: Radius.circular(35.0)),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xFF6F6F6F),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          FavoriteButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  place.description,
                  style: TextStyle(
                    fontFamily: 'Poppins-Light',
                    fontSize: 16
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 25.0),
                  child: SizedBox(
                    height: 65.0,
                    child: new RawMaterialButton(
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      fillColor: Color(0xFFD57C74),
                      elevation: 0.0,
                      child: Text(
                        'Play the album now!',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins-Medium',
                          color: Colors.white
                        ),
                      ),
                    onPressed: (){},
                ),
              ),
            ), 
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {

      //   },
      //   label: const Text('Play the album now!'),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
        size: 30.0,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}