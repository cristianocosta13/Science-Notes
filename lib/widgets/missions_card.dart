import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/missions.dart';

class ListMissions extends StatefulWidget {
  final Mission mission;
  const ListMissions({
    Key? key,
    required this.mission,
  }) : super(key: key);

  @override
  State<ListMissions> createState() => _ListMissionsState();
}

class _ListMissionsState extends State<ListMissions> {
  Widget build(BuildContext context){
    return InkWell(
      child: Card(
        color: Color.fromARGB(255, 248, 214, 128),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  Icon(widget.mission.icon),
                  const SizedBox(width: 12),
                  Text(widget.mission.title,
                    style: TextStyle(
                      fontFamily: 'AmacticSC-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(widget.mission.description,
                style: TextStyle(
                      fontFamily: 'Abel-Regular',
                      fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        )
      ),
    );
  }
}