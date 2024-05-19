## 概要
シンプルなmacroのサンプルです。

クラスに@Helloとアノテーションをつけると
```dart
@Hello()
class Sample {}
```

こういうオーグメントが作られてhelloメソッドが利用可能になります
```
augment class Sample {
  void hello() => print("Hello, World!");
}
```