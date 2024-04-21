import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pixText = '00020126580014br.gov.bcb.pix013635db028a-d4d0-446b-b46d-c8eb80ec4544520400005303986540510.005802BR5925Joao Pedro Capel Fernande6009Sao Paulo62070503***6304FCE7';

    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Para registrar, é necessário fazer um depósito inicial de R\$10,00',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/qrcode.jpg',
              width: 400,
              height: 400,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: pixText));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Pix copiado para a área de transferência')),
                );
              },
              child: Text('Copiar Pix'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Aguardando Deposito Inicial...',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
