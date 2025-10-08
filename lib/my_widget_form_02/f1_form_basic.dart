import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<FormBasicDemo> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo> {
  // Sử dụng global key để truy cập form
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Basic')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            // Không cần Center vì Column đã chiếm toàn bộ không gian
            children: [
              // **ĐÃ XÓA Form lồng nhau không cần thiết ở đây**
              // Chỉ giữ lại Column chứa các trường nhập liệu
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: "Nhập họ và tên",
                ),
                // Thêm validator để kiểm tra dữ liệu
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập tên';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Số điện thoại',
                  hintText: "Nhập số điện thoại",
                ),
                keyboardType: TextInputType.phone,
                // Thêm validator
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập số điện thoại';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        // 1. Kiểm tra xem form có hợp lệ không
                        if (_formKey.currentState!.validate()) {
                          // 2. Nếu hợp lệ, gọi save() để kích hoạt onSaved
                          _formKey.currentState!.save();

                          // 3. Hiển thị dữ liệu
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Name: $_name, Phone: $_phone'),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Reset'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300], // Màu nền khác
                      ),
                      onPressed: () {
                        // reset() sẽ xóa văn bản trong các trường
                        _formKey.currentState?.reset();

                        // Đồng thời cập nhật lại state để _name và _phone về null
                        // phòng trường hợp đã submit trước đó
                        setState(() {
                          _name = null;
                          _phone = null;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
