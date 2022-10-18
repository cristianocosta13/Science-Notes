import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/missions.dart';

class DBmissions {
  static List<Mission> list = [
    Mission(title: "Constância", description: "Estude 3 horas todos os dias ao longo da semana.", icon: Icons.access_time),
    Mission(title: "Pratique", description: "Faça 20 questões por dia.", icon: Icons.assignment_rounded),
    Mission(title: "Flashcards", description: "Faça flashcards dos assuntos que está estudando.", icon: Icons.drive_file_move_outline),
    Mission(title: "Planner", description: "Organize suas tarefas diárias.", icon: Icons.calendar_month),
    Mission(title: "Simulados", description: "Faça simulados interdiscuplinares com frequência e treine tudo o que aprendeu.", icon: Icons.text_increase_sharp),
  ];


static Future<List<Mission>> getMissions() async {
    await Future.delayed(const Duration(seconds: 3));
    return list;
  }

}