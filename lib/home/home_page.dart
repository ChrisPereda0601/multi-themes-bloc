import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:themed_app/home/tips_list.dart';
import 'package:themed_app/settings/preferences_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
// TODO: agregar estilo a los textos de titulos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hogar y Familia'),
        // abrir pagina de ajustes
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PreferencesPage()));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 8, right: 8, top: 12),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/home.jpeg",
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              child: TipsList(),
            ),
            SizedBox(height: 24),
            Text(
              "Tareas",
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.checkDouble,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                "Tareas pendientes",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              onTap: () {
                //TODO: abrir pagina de todos
              },
            ),
            Text(
              "Consejos",
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.water),
              title: Text("Regar plantas los martes"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.leaf),
              title: Text("Abonar plantas una vez al mes"),
              onTap: () {},
            ),
            Text(
              "Acerca",
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.circleQuestion),
              title: Text("Acerca de ..."),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
