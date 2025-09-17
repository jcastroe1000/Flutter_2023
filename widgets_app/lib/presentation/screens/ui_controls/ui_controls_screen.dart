import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ui controls')),
      body: _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, train, boat }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDev = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsFood = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Dev mode'),
          subtitle: Text('Controles adicionales'),
          value: isDev,
          onChanged: (value) => setState(() {
            isDev = !isDev;
          }),
        ),
        ExpansionTile(
          title: Text('Sunt irure tempor'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: Text('In voluptate nostrud '),
              subtitle: Text('Elit incididunt '),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: Text('In voluptate nostrud '),
              subtitle: Text('Elit incididunt '),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: Text('In voluptate nostrud '),
              subtitle: Text('Elit incididunt '),
              value: Transportation.train,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.train;
              }),
            ),
            RadioListTile(
              title: Text('In voluptate nostrud '),
              subtitle: Text('Elit incididunt '),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: Text('Eiusmod reprehenderit '),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }),
        ),
        CheckboxListTile(
          title: Text('Eiusmod reprehenderit '),
          value: wantsFood,
          onChanged: (value) => setState(() {
            wantsFood = !wantsFood;
          }),
        ),
        CheckboxListTile(
          title: Text('Eiusmod reprehenderit '),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
