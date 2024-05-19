// import 'dart:async';

// import 'package:macros/macros.dart';

// macro class Hello implements ClassDeclarationsMacro {
//   const  Hello();

//   @override
//   FutureOr<void> buildDeclarationsForClass(ClassDeclaration clazz, MemberDeclarationBuilder builder) async {
//     builder.declareInLibrary(
//       DeclarationCode.fromParts([
//         'augment ',
//         'class ${clazz.identifier.name}',
//         ' {',
//       ]),
//     );

//     final methods = await builder.methodsOf(clazz);
//     final hello =
//         methods.where((e) => e.identifier.name == 'hello').firstOrNull;

//     if (hello != null) return;

//     builder.declareInLibrary(
//       DeclarationCode.fromParts(
//         [
//           '  void hello() => print("Hello, World!");',
//         ]
//       ),
//     );

//     builder.declareInLibrary(
//       DeclarationCode.fromParts([
//         '}',
//       ]),
//     );
//   }
// }