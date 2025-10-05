import "package:flutter/material.dart";

class MyGestures extends StatelessWidget {
  const MyGestures({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold - widget cung cấp bố cục MUI đơn giản
    // Màn Hình
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent[200],
        elevation: 4,
        leading: IconButton(
          onPressed: () {
            print('Hello');
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Hello');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      // backgroundColor: Colors.red[400],
      body: Center(
        child: Column(
          children: [
            // GestureDetector - bắt được sự kiện
            GestureDetector(
              onDoubleTap: () {
                print('Double tap');
              },
              onPanUpdate: (details) {
                print('Kéo - di chuyển :${details.delta}');
              },
              onTap: () {
                print('Tap');
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Center(child: Text('Chạm vào tôi')),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent[200],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Cài đặt'),
        ],
      ),
    );
  }
}
