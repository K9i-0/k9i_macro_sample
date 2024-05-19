## 概要
シンプルなmacroのサンプルです。

クラスに@Helloとアノテーションをつけると
```dart
@Hello()
class Sample {}
```

こういうオーグメントが作られてhelloメソッドが利用可能になります
```dart
augment class Sample {
  void hello() => print("Hello, World!");
}
```

## 解説記事
準備中