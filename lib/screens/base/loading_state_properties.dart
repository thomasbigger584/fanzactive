
/*
 * Abstract (interface) which binds the loading widgets for the view
 */
abstract class LoadingStateProperties {
  bool get isLoading;

  set isLoading(bool value);

  set title(String value);

  String get title;
}
