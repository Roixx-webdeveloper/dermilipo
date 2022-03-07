import 'package:dermilipo_app/widgets/custom_bottom_nav.dart';
import 'package:dermilipo_app/widgets/utils/custom_navbar.dart';
import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> lang = ['Español', 'Inglés'];
    final List<String> mode = ['Desactivado', 'Activado'];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.house_rounded,
          routeName: '/home',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Personalización',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                children: [
                  Text(
                    'Seleccionar Idioma',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                    height: 100,
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Color(0xffF5F5F5),
                      onChanged: (value) {},
                     
                      value: lang[0],
                      items: lang
                          .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                children: [
                  Text(
                    '         Tema Oscuro',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                    height: 100,
                    child: DropdownButtonFormField<String>(
                      dropdownColor: Color(0xffF5F5F5),
                      onChanged: (value) {},
                      value: mode[0],
                      items: mode
                          .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
