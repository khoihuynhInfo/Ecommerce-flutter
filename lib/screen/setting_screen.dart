import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        // title: Text(''),
        elevation: 0,
      ),
      body: _buildBodySetting(),
    );
  }

  ListView _buildBodySetting() {
    return ListView(
      padding: EdgeInsets.all(18),

      // physics: BouncingScrollPhysics(),
      children: <Widget>[
        _buildCardSystem(),
        SizedBox(height: 15),
        _buildCard(),
        SizedBox(height: 15),
        _buildLogout(),
      ],
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Recives Notification'),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.pink,
              ),
              onTap: () {
                final snackBar = SnackBar(
                  content: Text('Recives Notification Success'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
            ),
            Divider(
              indent: 16.0,
              endIndent: 16.0,
            ),
            ListTile(
              title: Text('Lock purchase product'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.pink,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCardSystem() {
    return SizedBox(
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Biometric Enable'),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.pink,
              ),
              onTap: () {
                final snackBar = SnackBar(
                  content: Text('Biometric Enable'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
            ),
            Divider(
              indent: 16.0,
              endIndent: 16.0,
            ),
            ListTile(
              title: Text('Change Dark Theme'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.pink,
              ),
              onTap: () {
                _showBottomSheet(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLogout() {
    return SizedBox(
      height: 64,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.label_important),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/',
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(context) {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.0),
          topRight: Radius.circular(14.0),
        ),
      ),
      builder: (BuildContext context) {
        return ChooseThemeBottomSheet();
      },
    );
  }
}
