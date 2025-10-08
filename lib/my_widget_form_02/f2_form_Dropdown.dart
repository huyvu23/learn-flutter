import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String? _selectedCity;
  String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Basic')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: _selectedCity,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'City',
                  ),
                  items: [
                    DropdownMenuItem<String>(
                      value: 'Ha Noi',
                      child: Text('Ha Noi'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Hai Phong',
                      child: Text('Hai Phong'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Ho Chi Minh',
                      child: Text('Ho Chi Minh'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedCity = value;
                    });
                    print('value : $value');
                  },
                ),
                const Text(
                  'Vui lòng chọn một tùy chọn:',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),

                // Lựa chọn 1
                RadioListTile<String>(
                  title: const Text('Tùy chọn A'),
                  value: 'A',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),

                // Lựa chọn 2
                RadioListTile<String>(
                  title: const Text('Tùy chọn B'),
                  value: 'B',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),

                const SizedBox(height: 20),
                Text(
                  'Bạn đã chọn: ${_selectedOption ?? "Chưa có"}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                  child: const Center(child: Text('Item 1')),
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text('Item 2')),
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                  child: const Center(child: Text('Item 3')),
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                  child: const Center(child: Text('Item 4')),
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                  child: const Center(child: Text('Item 5')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
