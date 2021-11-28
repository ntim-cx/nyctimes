import 'package:news_header/services/http.service.dart';

enum UiState { idle, loading, done, error }

class BaseProvider {
  UiState uiState = UiState.idle;

  get isLoading => uiState == UiState.loading;

  get isDone => uiState == UiState.done;

  get hasError => uiState == UiState.error;

  final http = HttpService();

  // Functions
  void setUiState(UiState _uiState) {
    uiState = _uiState;
  }
}
