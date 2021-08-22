import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stateful'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de taps:',
                style: this._estiloTexto,
              ),
              Text('$_conteo', style: this._estiloTexto)
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: _reiniciar, child: Icon(Icons.exposure_zero)),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
            onPressed: _decrementar, child: Icon(Icons.remove)),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(onPressed: _incrementar, child: Icon(Icons.add)),
      ],
    );
  }

  void _incrementar() {
    setState(() => _conteo++);
  }

  void _decrementar() {
    setState(() => _conteo--);
  }

  void _reiniciar() {
    setState(() => _conteo = 0);
  }
} // Con guion bajo en el nombre de la clase se indica que la clase sera privada y que no podra usarse en otro Widget
