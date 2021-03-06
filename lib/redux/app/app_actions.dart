import 'dart:async';
import 'package:invoiceninja_flutter/data/models/entities.dart';

class PersistUI {}

class PersistData {}

class RefreshClient {
  final int clientId;

  RefreshClient(this.clientId);
}

class StartLoading {}

class StopLoading {}

class StartSaving {}

class StopSaving {}

class LoadStaticSuccess {
  final StaticData data;

  LoadStaticSuccess(this.data);
}

class UserSettingsChanged implements PersistUI {
  final bool enableDarkMode;
  final bool emailPayment;

  UserSettingsChanged({this.enableDarkMode, this.emailPayment});
}

class LoadDataSuccess {
  final Completer completer;
  final dynamic loginResponse;

  LoadDataSuccess({this.loginResponse, this.completer});
}

class RefreshData {
  final String platform;
  final Completer completer;

  RefreshData({this.platform, this.completer});
}

class FilterCompany {
  final String filter;

  FilterCompany(this.filter);
}
