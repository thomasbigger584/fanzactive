import 'package:fanzactive/screens/login/LoginScreen.dart';
import 'package:fanzactive/screens/mvp/BaseMvpContract.dart';

abstract class LoginView extends View {
  get loginCallback;

  set loginCallback(LoginCallback loginCallback);
}

typedef void LoginCallback(String username, String password);

abstract class LoginPresenter extends Presenter<LoginState> {
  void login(String username, String password);
}
