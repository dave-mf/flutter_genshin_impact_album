import 'package:flutter/material.dart';
import 'package:genshin_impact_album_info/detailAlbum.dart';
import 'package:genshin_impact_album_info/genshinAlbumList.dart';

class home_example extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Genshin Album",
          style: TextStyle(
            color: Color(0xFF505050),
            fontFamily: 'Poppins-Medium',
            fontWeight: FontWeight.w600,
            ),
          ),
      ),
      body: SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      final GenshinAlbum place = GenshinAlbumList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailAlbum(place: place);
                          }));
                        },
                        child: Column(
                              children: [
                                Card(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            place.imageAsset,
                                            fit: BoxFit.fill
                                            ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 13.0, top: 6.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                place.name,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontFamily: 'Poppins-Medium'
                                                  ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                place.album,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins-Light'
                                                ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                        ),
                      );
                    },
                    itemCount: GenshinAlbumList.length,
                ),   
            ),
      ),
    );
  }

}  