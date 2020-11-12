import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instargram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _setHomeUI(),
    );
  }

  Widget _setHomeUI() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Instagram에 오신 것을 환영합니다', style: TextStyle(fontSize: 24.0)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요'),
                Padding(padding: EdgeInsets.all(16.0)),
                _setCardUI()
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _setCardUI() {
    return SizedBox(width: 260.0,
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(1.0)),
                SizedBox(
                  width: 80.0, height: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2020/11/04/15/29/coffee-beans-5712780_1280.jpg'),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('test@gmail.com', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('이름'),
                Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 70.0,
                      height: 70.0,
                      child: Image.network('http://cdn.pixabay.com/photo/2019/10/15/16/20/autumn-4552274_1280.jpg', fit: BoxFit.cover,),
                    ),
                    Padding(padding: EdgeInsets.all(1.0)),
                    SizedBox(
                      width: 70.0,
                      height: 70.0,
                      child: Image.network('http://cdn.pixabay.com/photo/2019/09/06/00/32/landscape-4455224_1280.jpg', fit: BoxFit.cover),
                    ),
                    Padding(padding: EdgeInsets.all(1.0)),
                    SizedBox(
                      width: 70.0,
                      height: 70.0,
                      child: Image.network('http://cdn.pixabay.com/photo/2020/09/06/20/21/cat-5550033_1280.jpg', fit: BoxFit.cover),
                    )
                  ]
                ),
                Padding(padding: EdgeInsets.all(4.0)),
                Text('Facebook 친구'),
                Padding(padding: EdgeInsets.all(4.0)),
                RaisedButton(
                  child: Text('팔로우'),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {

                  },
                ),
                Padding(padding: EdgeInsets.all(4.0)),
              ],
            ),
          ),
        )
    );
  }
}
