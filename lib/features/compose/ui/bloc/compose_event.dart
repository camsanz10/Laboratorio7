/// Something the compose screen asks the ComposeBloc to do.
abstract class ComposeEvent {}

class ComposePhotoRequested extends ComposeEvent {
  @override
  String toString() {
    return 'ComposePhotoRequested()';
  }
}

class ComposePhotoRemoved extends ComposeEvent {
  @override
  String toString() {
    return 'ComposePhotoRemoved()';
  }
}

class ComposeSubmitted extends ComposeEvent {
  final String content;

  ComposeSubmitted(this.content);

  @override
  String toString() {
    return "ComposeSubmitted('$content')";
  }
}
