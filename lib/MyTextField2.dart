import "package:flutter/material.dart";

class MyTextField2 extends StatefulWidget {
  const MyTextField2({super.key});

  @override
  State<StatefulWidget> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField2> {
  final _textController = TextEditingController();

  // String _inputText = '';

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  controller: _textController,
                  // onChanged: (value) {
                  //   setState(() {
                  //     _inputText = value;
                  //   });
                  // },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Mật khẩu',
                    hintText: 'Nhập mật khẩu',
                    prefix: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
