import 'dart:async';



class Validators {


  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: ( email, sink ) {


      /*js Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp   = new RegExp(pattern);

      if ( regExp.hasMatch( email ) ) {
        sink.add( email );
      } else {
        sink.addError('Email no es correcto');
      } */

      bool b = double.parse(email, (e) => null) != null;

      if ( b ) {
        if ( email.length == 10 ) {
          sink.add( email );
        } else {
          sink.addError('Por favor ingrese 10 números');
        }
      } else {
        sink.addError('Por favor ingrese números');
      }           

    }
  );


  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: ( password, sink ) {

      if ( password.length >= 6 ) {
        sink.add( password );
      } else {
        sink.addError('Por favor ingrese más de 6 caracteres');
      }

    }
  );


}
