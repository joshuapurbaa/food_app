import 'package:flutter/material.dart';
import 'package:food_app/theme/styles.dart';

class SizeIconWidget extends StatefulWidget {
  const SizeIconWidget({super.key});

  @override
  _SizeIconWidgetState createState() => _SizeIconWidgetState();
}

class _SizeIconWidgetState extends State<SizeIconWidget> {
  int _selectedIndex = 0;

  final List<String> _size = ['S', 'M', 'L'];

  Widget _buildSizeIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? greenColor : silverColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(_size[index],
            style: _selectedIndex == index
                ? const TextStyle(color: Colors.white, fontSize: 24.0)
                : const TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _size
            .asMap()
            .entries
            .map(
              (MapEntry map) => _buildSizeIcon(map.key),
            )
            .toList(),
      ),
    );
  }
}
