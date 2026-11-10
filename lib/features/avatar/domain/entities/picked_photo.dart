import 'dart:typed_data';

class PickedPhoto {
  final Uint8List bytes;
  final String extension;

  const PickedPhoto({required this.bytes, required this.extension});
}
