import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class InternetConnectionService {
  InternetConnectionService() {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }
  final Connectivity _connectivity = Connectivity();

  void _updateConnectionStatus(List<ConnectivityResult> connectivityResult) {
    if (connectivityResult.contains(ConnectivityResult.none)) {
      SmartDialog.showLoading();
      ;
    } else {
      SmartDialog.dismiss();
    }
  }
}
