import "package:flutter/material.dart";

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

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
      backgroundColor: Colors.blue[400],
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(alignment: Alignment.center, child: Text("Vũ Quang huy")),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Press');
        },
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.add_ic_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Cài đặt'),
        ],
      ),
    );
  }
}
