import "package:flutter/material.dart";

class MyButton2 extends StatelessWidget {
  const MyButton2({super.key});

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
            ElevatedButton(
              // để là null sẽ tương đương với disabled
              // onPressed: null,
              onPressed: () {
                print('Pressed');
              },
              onLongPress: () {
                print('Long pressed');
              },
              style: ElevatedButton.styleFrom(
                elevation: 15,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                // BORDER
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
              child: Text('ElevatedButton', style: TextStyle(fontSize: 24)),
            ),
            // InkWell : không phải là button
            InkWell(
              onTap: () {
                print('tap');
              },
              onDoubleTap: () {
                print('Double Tap');
              },
              child: Container(
                child: Text('Không phải button'),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
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
