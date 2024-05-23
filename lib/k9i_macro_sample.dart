library;

// exportするとVS CodeにGo to Augmentationが表示されない？
// export 'src/k9i_macro_sample_base.dart';
import 'dart:async';

import 'package:macros/macros.dart';

macro class Hello implements ClassDeclarationsMacro {
  const Hello();

  @override
  FutureOr<void> buildDeclarationsForClass(ClassDeclaration clazz, MemberDeclarationBuilder builder) async {
    final methods = await builder.methodsOf(clazz);
    final hello =
        methods.where((e) => e.identifier.name == 'hello').firstOrNull;

    if (hello != null) return;

    builder.declareInType(
      DeclarationCode.fromParts(
        [
          '  void hello() => print("Hello, World!");',
        ]
      ),
    );
  }
}