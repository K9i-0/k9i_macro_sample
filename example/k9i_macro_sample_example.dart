import 'package:k9i_macro_sample/k9i_macro_sample.dart';

@Hello()
class Sample {}

void main() {
  final sample = Sample();
  sample.hello();
}
