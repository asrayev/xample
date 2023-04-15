// // ignore: depend_on_referenced_packages
// import 'package:speech_to_text/speech_recognition_result.dart';
// // ignore: depend_on_referenced_packages
// import 'package:speech_to_text/speech_to_text.dart';
//
// class SpeachToTextRepository {
//   static SpeechToText speechToText = SpeechToText();
//
//
//   static void listenSpeach(Function(SpeechRecognitionResult) recogFn)async{
//     await speechToText.initialize();
//     await speechToText.listen(
//         listenMode: ListenMode.dictation,
//         onResult: recogFn,
//         listenFor: const Duration(seconds: 90));
//   }
//
//
//   static void stopListening() async {
//     await speechToText.stop();
//   }
//
//
// }
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechToTextRepository {
  stt.SpeechToText? _speech;

  // Future<bool> initSpeech() async {
  //   _speech = stt.SpeechToText();
  //   return _speech!.initialize();
  // }


  static void startListening() async {
    stt.SpeechToText? _speech;
    _speech = stt.SpeechToText();
    if (_speech.isAvailable) {
      _speech.listen(
        onResult: (result) {
          print("Speach -> $result");
        },
      );
    }
  }

  Future<void> stopListening() async {
    _speech!.stop();
  }
}

