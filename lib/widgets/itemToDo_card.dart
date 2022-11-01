import 'package:flutter/material.dart';
import 'package:sciencenotes/assets/colors/custom_colors.dart';
import 'package:sciencenotes/domain/toDo.dart';

class ItemCardWidget extends StatefulWidget {
  final ToDo afazer;

  const ItemCardWidget({Key? key, required this.afazer})
      : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCardWidget> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checkValue,
                    onChanged: (value) {
                      setState((){
                        checkValue = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(widget.afazer.afazerText,
                        style: const TextStyle(fontSize: 24, fontFamily: 'Abel-Regular', fontWeight: FontWeight.w600, color: CustomColors.appeButtonColor)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(widget.afazer.dataText,
                style: const TextStyle(fontSize: 24, fontFamily: 'Abel-Regular')),
          ],
        ),
      ),
      color: const Color(0xfff0e7f1),
    );
  }
}