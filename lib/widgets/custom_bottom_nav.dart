
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.deepPurple,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.healing), label: 'Rutinas'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Opciones'),
      ],
    );
  }
}