import 'dart:io';
import 'dart:typed_data';
import 'package:cubit_example/speach_to_text.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text to PDF Converter',
      home: HomePage(),
    );
  }
}


// import 'dart:io';
// import 'dart:typed_data';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// void main() async {
//   final text = 'Hello, world!';
//   final pdfBytes = await generatePdf(text);
//   final file = File('example.pdf');
//   await file.writeAsBytes(pdfBytes);
// }
//
// Future<Uint8List> generatePdf(String text) async {
//   final pdf = pw.Document();
//   pdf.addPage(pw.Page(
//     build: (context) => pw.Center(
//       child: pw.Text(text),
//     ),
//   ));
//   return pdf.save();
// }

//
// class Formatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue,
//       TextEditingValue newValue,
//       ) {
//     if (newValue.text.length <= 3) {
//       return oldValue;
//     }
//     return newValue;
//   }
// }
//
// class Example extends StatefulWidget {
//   const Example({Key? key}) : super(key: key);
//
//   @override
//   State<Example> createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   late final TextEditingController pinController;
//
//   @override
//   void initState() {
//     super.initState();
//     pinController = TextEditingController(text: 'Hello');
//   }
//
//   @override
//   void dispose() {
//     pinController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Pinput(
//       controller: pinController,
//       length: 10,
//       toolbarEnabled: false,
//       inputFormatters: [Formatter()],
//     );
//   }
// }
//
// /// This is the basic usage of Pinput
// /// For more examples check out the demo directory
// class PinputExample extends StatefulWidget {
//   const PinputExample({Key? key}) : super(key: key);
//
//   @override
//   State<PinputExample> createState() => _PinputExampleState();
// }
//
// class _PinputExampleState extends State<PinputExample> {
//   final pinController = TextEditingController();
//   final focusNode = FocusNode();
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   void dispose() {
//     pinController.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
//     const fillColor = Color.fromRGBO(243, 246, 249, 0);
//
//
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: const TextStyle(
//         fontSize: 22,
//         color: Colors.black,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.grey),
//       ),
//     );
//
//     // return TextField(
//     //   contextMenuBuilder: (_, EditableTextState editableTextState) {
//     //     print('HEHE');
//     //     return AdaptiveTextSelectionToolbar(
//     //       anchors: editableTextState.contextMenuAnchors,
//     //       children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
//     //         return CupertinoButton(
//     //           borderRadius: null,
//     //           color: const Color(0xffaaaa00),
//     //           disabledColor: const Color(0xffaaaaff),
//     //           onPressed: buttonItem.onPressed,
//     //           padding: const EdgeInsets.all(10.0),
//     //           pressedOpacity: 0.7,
//     //           child: SizedBox(
//     //             width: 200.0,
//     //             child: Text(
//     //               CupertinoTextSelectionToolbarButton.getButtonLabel(context, buttonItem),
//     //             ),
//     //           ),
//     //         );
//     //       }).toList(),
//     //     );
//     //   },
//     // );
//
//     /// Optionally you can use form to validate the Pinput
//     return Form(
//       key: formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Directionality(
//             // Specify direction if desired
//             textDirection: TextDirection.ltr,
//             child: Pinput(
//               length: 6,
//               controller: pinController,
//               focusNode: focusNode,
//               androidSmsAutofillMethod:
//               AndroidSmsAutofillMethod.smsUserConsentApi,
//               listenForMultipleSmsOnAndroid: true,
//               defaultPinTheme: defaultPinTheme,
//               validator: (value) {
//                 return value == '222222' ? null : 'Pin is incorrect';
//               },
//               hapticFeedbackType: HapticFeedbackType.lightImpact,
//               onCompleted: (pin) {
//                 debugPrint('onCompleted: $pin');
//               },
//               onChanged: (value) {
//                 debugPrint('onChanged: $value');
//               },
//               cursor: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(bottom: 9),
//                     width: 22,
//                     height: 1,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//               focusedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.blue),
//                 ),
//               ),
//               submittedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   color: fillColor,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.blue),
//                 ),
//               ),
//               errorPinTheme: defaultPinTheme.copyBorderWith(
//                 border: Border.all(color: Colors.redAccent),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               focusNode.unfocus();
//               formKey.currentState!.validate();
//             },
//             child: const Text('Validate'),
//           ),
//         ],
//       ),
//     );
//   }
// }


// ignore_for_file: avoid_print

// import 'package:bottom_picker/bottom_picker.dart';
// import 'package:bottom_picker/resources/arrays.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//       ),
//       home: Scaffold(
//         body: ExampleApp(),
//       ),
//     );
//   }
// }
//
// class ExampleApp extends StatelessWidget {
//   final countryList = [
//     Text('Algeria 🇩🇿'),
//     Text('Maroco 🇲🇦'),
//     Text('Tunisia 🇹🇳'),
//     Text('Palestine 🇵🇸'),
//     Text('Egypt 🇪🇬'),
//     Text('Syria 🇸🇾'),
//     Text('Irak 🇮🇶'),
//     Text('Mauritania 🇲🇷')
//   ];
//
//   final buttonWidth = 300.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xffF6F2F2),
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.network(
//             'https://github.com/koukibadr/Bottom-Picker/blob/main/example/bottom_picker_logo.gif?raw=true',
//             width: 200,
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openSimpleItemPicker(context, countryList);
//               },
//               child: Text('Simple Item picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openSecondSimpleItemPicker(context, countryList);
//               },
//               child: Text('Simple Item picker with different theme'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 showMyBottomSheet(context);
//               },
//               child: Text('Date Picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openRangeDatePicker(context);
//               },
//               child: Text('Range Date Picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openArabicRangeDatePicker(context);
//               },
//               child: Text('Arabic Range Date Picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openTimePicker(context);
//               },
//               child: Text('Time Picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openDateTimePicker(context);
//               },
//               child: Text('Date and Time Picker'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openDateTimePickerWithCustomButton(context);
//               },
//               child: Text('Bottom picker with custom button'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openPickerWithCustomPickerTextStyle(context);
//               },
//               child: Text(
//                 'Bottom picker with custom picker text style',
//                 style: TextStyle(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _openSimpleItemPicker(BuildContext context, List<Text> items) {
//     BottomPicker(
//       items: items,
//       title: 'Choose your country',
//       titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//       backgroundColor: Colors.yellow.withOpacity(0.6),
//       bottomPickerTheme: BottomPickerTheme.morningSalad,
//       onSubmit: (index) {
//         print(index);
//       },
//       buttonAlignement: MainAxisAlignment.start,
//       displayButtonIcon: false,
//       displaySubmitButton: false,
//     ).show(context);
//   }
//
//   void _openSecondSimpleItemPicker(BuildContext context, List<Text> items) {
//     BottomPicker(
//       items: items,
//       selectedItemIndex: 1,
//       title: 'اختر بلدك',
//       titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//       onChange: (index) {
//         print(index);
//       },
//       onSubmit: (index) {
//         print(index);
//       },
//       bottomPickerTheme: BottomPickerTheme.morningSalad,
//       layoutOrientation: LayoutOrientation.rtl,
//     ).show(context);
//   }
//
//   void _openDatePicker(BuildContext context) {
//     BottomPicker.date(
//       title: 'Set your Birthday',
//       dateOrder: DatePickerDateOrder.dmy,
//       pickerTextStyle: const TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       titleStyle: const TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.red,
//       ),
//
//       descriptionStyle: TextStyle(
//         color: Colors.yellow,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       buttonTextStyle: TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       maxDateTime: DateTime.now(),
//       minDateTime: DateTime(1900),
//       onChange: (index) {
//         print(index);
//       },
//       onSubmit: (index) {
//         print(index);
//       },
//       bottomPickerTheme: BottomPickerTheme.heavyRain,
//     ).show(context);
//   }
//
//   void _openRangeDatePicker(BuildContext context) {
//     BottomPicker.range(
//       title: 'Set date range',
//       description: 'Please select a first date and an end date',
//       dateOrder: DatePickerDateOrder.dmy,
//       minFirstDate: DateTime.now(),
//       minSecondDate: DateTime.now().add(const Duration(days: 1)),
//       pickerTextStyle: TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.black,
//       ),
//       descriptionStyle: TextStyle(
//         color: Colors.black,
//       ),
//       onSubmitPressed: (firstDate, secondDate) {
//         print(firstDate);
//         print(secondDate);
//       },
//       bottomPickerTheme: BottomPickerTheme.plumPlate,
//     ).show(context);
//   }
//
//   void _openArabicRangeDatePicker(BuildContext context) {
//     BottomPicker.range(
//       title: 'حدد النطاق الزمني',
//       description: 'الرجاء تحديد أول تاريخ وتاريخ انتهاء',
//       dateOrder: DatePickerDateOrder.dmy,
//       layoutOrientation: LayoutOrientation.rtl,
//       pickerTextStyle: TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.black,
//       ),
//       descriptionStyle: TextStyle(
//         color: Colors.black,
//       ),
//       onSubmitPressed: (firstDate, secondDate) {
//         print(firstDate);
//         print(secondDate);
//       },
//       bottomPickerTheme: BottomPickerTheme.plumPlate,
//     ).show(context);
//   }
//
//   void _openTimePicker(BuildContext context) {
//     BottomPicker.time(
//       title: 'Set your next meeting time',
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.orange,
//       ),
//       onSubmit: (index) {
//         print(index);
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       bottomPickerTheme: BottomPickerTheme.orange,
//       use24hFormat: true,
//     ).show(context);
//   }
//
//   void _openDateTimePicker(BuildContext context) {
//     BottomPicker.dateTime(
//       title: 'Set the event exact time and date',
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.black,
//       ),
//       onSubmit: (date) {
//         print(date);
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       iconColor: Colors.black,
//       minDateTime: DateTime(2021, 5, 1),
//       maxDateTime: DateTime(2021, 8, 2),
//       initialDateTime: DateTime(2021, 5, 1),
//       gradientColors: [Color(0xfffdcbf1), Color(0xffe6dee9)],
//     ).show(context);
//   }
//
//   void _openDateTimePickerWithCustomButton(BuildContext context) {
//     BottomPicker.dateTime(
//       title: 'Set the event exact time and date',
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.black,
//       ),
//       onSubmit: (date) {
//         print(date);
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       buttonText: 'Confirm',
//       buttonTextStyle: const TextStyle(color: Colors.white),
//       buttonSingleColor: Colors.pink,
//       iconColor: Colors.black,
//       minDateTime: DateTime(2021, 5, 1),
//       maxDateTime: DateTime(2021, 8, 2),
//       gradientColors: [Color(0xfffdcbf1), Color(0xffe6dee9)],
//     ).show(context);
//   }
//
//   void _openPickerWithCustomPickerTextStyle(BuildContext context) {
//     BottomPicker(
//       items: [
//         Text('Leonardo DiCaprio'),
//         Text('Johnny Depp'),
//         Text('Robert De Niro'),
//         Text('Tom Hardy'),
//         Text('Ben Affleck'),
//       ],
//       title: 'Select the actor',
//       pickerTextStyle: TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.bold,
//       ),
//       closeIconColor: Colors.red,
//     ).show(context);
//   }
// }
//
// showMyBottomSheet(context) {
//   showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.white,
//       builder: (context) {
//         return SizedBox(
//           height: 320,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 260,
//                 child: CupertinoTheme(
//                   data: const CupertinoThemeData(
//                     brightness: Brightness.light,
//                   ),
//                   child: CupertinoDatePicker(
//                     minimumDate: DateTime(1900),
//                     maximumDate: DateTime(2023),
//                     mode: CupertinoDatePickerMode.date,
//                     onDateTimeChanged: (value) {
//                      // dateBirthday = value.toString();
//                     },
//                     initialDateTime: DateTime(
//                       DateTime.now().year,
//                       DateTime.now().month,
//                       DateTime.now().day,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//
//                   // try {
//                   //   if (dateBirthday != null) {
//                   //   } else {
//                   //     dateBirthday = DateTime(DateTime.now().year,
//                   //         DateTime.now().month, DateTime.now().day)
//                   //         .toString();
//                   //   }
//                   // } catch (e) {
//                   //   dateBirthday = DateTime(DateTime.now().year,
//                   //       DateTime.now().month, DateTime.now().day)
//                   //       .toString();
//                   // }
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(30)),
//                   height: 40,
//                   width: 250,
//                   child: Center(
//                     child: Text(
//                       "OK",
//                       style: TextStyle(
//                           color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       });
// }

// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:flutter/material.dart';
// import 'package:highlight_text/highlight_text.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Voice',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: SpeechScreen(),
//     );
//   }
// }
//
// class SpeechScreen extends StatefulWidget {
//   @override
//   _SpeechScreenState createState() => _SpeechScreenState();
// }
//
// class _SpeechScreenState extends State<SpeechScreen> {
//   final Map<String, HighlightedWord> _highlights = {
//     'flutter': HighlightedWord(
//       onTap: () => print('flutter'),
//       textStyle: const TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'voice': HighlightedWord(
//       onTap: () => print('voice'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'subscribe': HighlightedWord(
//       onTap: () => print('subscribe'),
//       textStyle: const TextStyle(
//         color: Colors.red,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'like': HighlightedWord(
//       onTap: () => print('like'),
//       textStyle: const TextStyle(
//         color: Colors.blueAccent,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'comment': HighlightedWord(
//       onTap: () => print('comment'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   };
//
//   stt.SpeechToText? _speech;
//   bool _isListening = false;
//   String _text = 'Press the button and start speaking';
//   double _confidence = 1.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}%'),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: AvatarGlow(
//         animate: _isListening,
//         glowColor: Theme.of(context).primaryColor,
//         endRadius: 75.0,
//         duration: const Duration(milliseconds: 2000),
//         repeatPauseDuration: const Duration(milliseconds: 100),
//         repeat: true,
//         child: FloatingActionButton(
//           onPressed: _listen,
//           child: Icon(_isListening ? Icons.mic : Icons.mic_none),
//         ),
//       ),
//       body: SingleChildScrollView(
//         reverse: true,
//         child: Container(
//           padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
//           child: TextHighlight(
//             text: _text,
//             words: _highlights,
//             textStyle: const TextStyle(
//               fontSize: 32.0,
//               color: Colors.black,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _listen() async {
//     if (!_isListening) {
//       bool available = await _speech!.initialize(
//         onStatus: (val) => print('onStatus: $val'),
//         onError: (val) => print('onError: $val'),
//       );
//       if (available) {
//         setState(() => _isListening = true);
//         _speech!.listen(
//           onResult: (val) => setState(() {
//             _text = val.recognizedWords;
//             if (val.hasConfidenceRating && val.confidence > 0) {
//               _confidence = val.confidence;
//             }
//           }),
//         );
//       }
//     } else {
//       setState(() => _isListening = false);
//       _speech!.stop();
//     }
//   }
// }

// import 'dart:async';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:text_to_speech/text_to_speech.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final String defaultLanguage = 'en-US';
//
//   TextToSpeech tts = TextToSpeech();
//
//   String text = '';
//   double volume = 1; // Range: 0-1
//   double rate = 1.0; // Range: 0-2
//   double pitch = 1.0; // Range: 0-2
//
//   String? language;
//   String? languageCode;
//   List<String> languages = <String>[];
//   List<String> languageCodes = <String>[];
//   String? voice;
//
//   TextEditingController textEditingController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     textEditingController.text = text;
//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       initLanguages();
//     });
//   }
//
//   Future<void> initLanguages() async {
//     /// populate lang code (i.e. en-US)
//     languageCodes = await tts.getLanguages();
//
//     /// populate displayed language (i.e. English)
//     final List<String>? displayLanguages = await tts.getDisplayLanguages();
//     if (displayLanguages == null) {
//       return;
//     }
//
//     languages.clear();
//     for (final dynamic lang in displayLanguages) {
//       languages.add(lang as String);
//     }
//
//     final String? defaultLangCode = await tts.getDefaultLanguage();
//     if (defaultLangCode != null && languageCodes.contains(defaultLangCode)) {
//       languageCode = defaultLangCode;
//     } else {
//       languageCode = defaultLanguage;
//     }
//     language = await tts.getDisplayLanguageByCode(languageCode!);
//
//     /// get voice
//     voice = await getVoiceByLang(languageCode!);
//
//     if (mounted) {
//       setState(() {});
//     }
//   }
//
//   Future<String?> getVoiceByLang(String lang) async {
//     final List<String>? voices = await tts.getVoiceByLang(languageCode!);
//     if (voices != null && voices.isNotEmpty) {
//       return voices.first;
//     }
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Text-to-Speech Example'),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Center(
//               child: Column(
//                 children: <Widget>[
//                   TextField(
//                     controller: textEditingController,
//                     maxLines: 5,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         hintText: 'Enter some text here...'),
//                     onChanged: (String newText) {
//                       setState(() {
//                         text = newText;
//                       });
//                     },
//                   ),
//                   Row(
//                     children: <Widget>[
//                       const Text('Volume'),
//                       Expanded(
//                         child: Slider(
//                           value: volume,
//                           min: 0,
//                           max: 1,
//                           label: volume.round().toString(),
//                           onChanged: (double value) {
//                             initLanguages();
//                             setState(() {
//                               volume = value;
//                             });
//                           },
//                         ),
//                       ),
//                       Text('(${volume.toStringAsFixed(2)})'),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       const Text('Rate'),
//                       Expanded(
//                         child: Slider(
//                           value: rate,
//                           min: 0,
//                           max: 2,
//                           label: rate.round().toString(),
//                           onChanged: (double value) {
//                             setState(() {
//                               rate = value;
//                             });
//                           },
//                         ),
//                       ),
//                       Text('(${rate.toStringAsFixed(2)})'),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       const Text('Pitch'),
//                       Expanded(
//                         child: Slider(
//                           value: pitch,
//                           min: 0,
//                           max: 2,
//                           label: pitch.round().toString(),
//                           onChanged: (double value) {
//                             setState(() {
//                               pitch = value;
//                             });
//                           },
//                         ),
//                       ),
//                       Text('(${pitch.toStringAsFixed(2)})'),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       const Text('Language'),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       DropdownButton<String>(
//                         value: language,
//                         icon: const Icon(Icons.arrow_downward),
//                         iconSize: 24,
//                         elevation: 16,
//                         style: const TextStyle(color: Colors.deepPurple),
//                         underline: Container(
//                           height: 2,
//                           color: Colors.deepPurpleAccent,
//                         ),
//                         onChanged: (String? newValue) async {
//                           languageCode =
//                           await tts.getLanguageCodeByName(newValue!);
//                           voice = await getVoiceByLang(languageCode!);
//                           setState(() {
//                             language = newValue;
//                           });
//                         },
//                         items: languages
//                             .map<DropdownMenuItem<String>>((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       const Text('Voice'),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Text(voice ?? '-'),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Container(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: ElevatedButton(
//                             child: const Text('Stop'),
//                             onPressed: () {
//                               tts.stop();
//                             },
//                           ),
//                         ),
//                       ),
//                       if (supportPause)
//                         Expanded(
//                           child: Container(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: ElevatedButton(
//                               child: const Text('Pause'),
//                               onPressed: () {
//                                 tts.pause();
//                               },
//                             ),
//                           ),
//                         ),
//                       if (supportResume)
//                         Expanded(
//                           child: Container(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: ElevatedButton(
//                               child: const Text('Resume'),
//                               onPressed: () {
//                                 tts.resume();
//                               },
//                             ),
//                           ),
//                         ),
//                       Expanded(
//                           child: Container(
//                             child: ElevatedButton(
//                               child: const Text('Speak'),
//                               onPressed: () {
//                                 speak();
//                               },
//                             ),
//                           ))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   bool get supportPause => defaultTargetPlatform != TargetPlatform.android;
//
//   bool get supportResume => defaultTargetPlatform != TargetPlatform.android;
//
//   void speak() {
//     String text = '';
//     double volume = 1; // Range: 0-1
//     double rate = 1.0; // Range: 0-2
//     double pitch = 1.0; // Range: 0-2
//     String defaultLanguage = 'en-US';
//     tts.setVolume(volume);
//     tts.setRate(rate);
//     if (defaultLanguage != null) {
//       tts.setLanguage(defaultLanguage);
//     }
//     tts.setPitch(pitch);
//     tts.speak(text);
//   }
// }