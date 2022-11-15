import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//
// CAMPO DE TEXTO
//
campoTexto(rotulo, icone, variavel, {senha}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
    child: TextField(
      controller: variavel,
      obscureText: (senha != null) ? true : false,
      style: GoogleFonts.roboto(fontSize: 24),
      decoration: InputDecoration(
        labelText: rotulo,
        prefixIcon: Icon(icone),
        labelStyle: GoogleFonts.roboto(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}

//
// MENSAGEM DE ERRO
//
void erro(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.redAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

//
// MENSAGEM DE SUCESSO
//
void sucesso(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.greenAccent.withOpacity(0.4),
      content: Text(
        msg,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}
