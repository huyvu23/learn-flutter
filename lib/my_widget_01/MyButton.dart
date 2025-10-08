import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  const MyButton({super.key});

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
      // backgroundColor: Colors.blue[400],
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('ElevatedButton');
                  },
                  child: false
                      ? const SizedBox(
                          width: 24, // Set size for the spinner
                          height: 24,
                          child: CircularProgressIndicator(
                            color: Colors
                                .white, // Match the button's foreground color
                            strokeWidth: 3,
                          ),
                        )
                      : const Text(
                          'Submit',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    print('TextButton');
                  },
                  child: Text('TextButton'),
                ),
              ],
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    print('OutlinedButton');
                  },
                  child: Text('OutlinedButton'),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    print('Hello');
                  },
                  icon: Icon(Icons.camera_alt),
                  color: Colors.amber[200],
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  tooltip: 'FloatingActionButton',
                  onPressed: () {
                    print('FloatingActionButton');
                  },
                  child: Icon(Icons.dangerous),
                ),
              ],
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
