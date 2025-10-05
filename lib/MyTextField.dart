import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold - widget cung cấp bố cục MUI đơn giản
    // Màn Hình
    return GestureDetector(
      onTap: () {
        // 1. Lấy FocusScope hiện tại của context.
        // 2. Gọi unfocus() để hủy bỏ focus của bất kỳ TextField nào đang được focus.
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Họ và tên',
                    hintText: 'Nhập họ và tên',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Example@gmail.com',
                    helperText: 'Nhập email cá nhân',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefix: Icon(Icons.email),
                    suffixIcon: Icon(Icons.clear),
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Số điện thoại',
                    hintText: 'Nhập Số điện thoại',
                    prefix: Icon(Icons.call),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    hintText: 'Nhập mật khẩu',
                    prefix: Icon(Icons.password),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent[200],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Cài đặt',
            ),
          ],
        ),
      ),
    );
  }
}
