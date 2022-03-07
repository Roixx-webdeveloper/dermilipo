import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:dermilipo_app/widgets/custom_bottom_nav.dart';
import 'package:dermilipo_app/widgets/utils/custom_navbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.house_rounded,
          routeName: '/home',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/person.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Karla Cisneros',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'karla_cis@mail.com',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Información del paciente',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                _labelInformation(
                  icon: Icons.phone,
                  title: 'Número Telefónico:',
                  subtitle: '+58 412111000',
                ),
                SizedBox(
                  height: 20,
                ),
                _labelInformation(
                  icon: Icons.pin_drop_sharp,
                  title: 'Dirección:',
                  subtitle: 'Zapopan, México',
                ),
                SizedBox(
                  height: 20,
                ),
                _labelInformation(
                  icon: Icons.today,
                  title: 'Inicio del tratamiento:',
                  subtitle: '12/01/22',
                ),
                SizedBox(
                  height: 20,
                ),
                _labelInformation(
                  icon: Icons.list_alt,
                  title: 'Sesiones registradas:',
                  subtitle: '5',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}

class _labelInformation extends StatelessWidget {
  const _labelInformation({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.deepPurple, shape: BoxShape.circle),
              child: Icon(
                icon,
                color: Colors.white,
              )),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: 4,
              ),
              Text(
                '$title',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
              Text(
                '$subtitle',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
