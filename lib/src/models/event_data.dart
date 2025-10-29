import 'user_data.dart';

class EventData {
  String? clientId;
  String? currency;
  String? ipOverride;
  String? language;
  String? pageEncoding;
  String? pageHostname;
  String? pageLocation;
  String? pagePath;
  String? pageReferrer;
  String? pageTitle;
  String? screenResolution;
  String? userAgent;
  UserData? userData;
  String? userId;
  num? value;
  String? viewportSize;
  String? ipAddress;

  EventData({
    this.clientId,
    this.currency,
    this.ipOverride,
    this.language,
    this.pageEncoding,
    this.pageHostname,
    this.pageLocation,
    this.pagePath,
    this.pageReferrer,
    this.pageTitle,
    this.screenResolution,
    this.userAgent,
    this.userData,
    this.userId,
    this.value,
    this.viewportSize,
    this.ipAddress,
  });

  factory EventData.fromJson(Map<String, dynamic> json) => EventData(
        clientId: json['client_id'],
        currency: json['currency'],
        ipOverride: json['ip_override'],
        language: json['language'],
        pageEncoding: json['page_encoding'],
        pageHostname: json['page_hostname'],
        pageLocation: json['page_location'],
        pagePath: json['page_path'],
        pageReferrer: json['page_referrer'],
        pageTitle: json['page_title'],
        screenResolution: json['screen_resolution'],
        userAgent: json['user_agent'],
        userData: json['user_data'] != null
            ? UserData.fromJson(json['user_data'])
            : null,
        userId: json['user_id'],
        value: json['value'],
        viewportSize: json['viewport_size'],
        ipAddress: json['ip_address'],
      );

  Map<String, dynamic> toJson() => {
        'client_id': clientId,
        'currency': currency,
        'ip_override': ipOverride,
        'language': language,
        'page_encoding': pageEncoding,
        'page_hostname': pageHostname,
        'page_location': pageLocation,
        'page_path': pagePath,
        'page_referrer': pageReferrer,
        'page_title': pageTitle,
        'screen_resolution': screenResolution,
        'user_agent': userAgent,
        'user_data': userData?.toJson(),
        'user_id': userId,
        'value': value,
        'viewport_size': viewportSize,
        'ip_address': ipAddress,
      };

  EventData copyWith({
    String? clientId,
    String? currency,
    String? ipOverride,
    String? language,
    String? pageEncoding,
    String? pageHostname,
    String? pageLocation,
    String? pagePath,
    String? pageReferrer,
    String? pageTitle,
    String? screenResolution,
    String? userAgent,
    UserData? userData,
    String? userId,
    num? value,
    String? viewportSize,
    String? ipAddress,
  }) {
    return EventData(
      clientId: clientId ?? this.clientId,
      currency: currency ?? this.currency,
      ipOverride: ipOverride ?? this.ipOverride,
      language: language ?? this.language,
      pageEncoding: pageEncoding ?? this.pageEncoding,
      pageHostname: pageHostname ?? this.pageHostname,
      pageLocation: pageLocation ?? this.pageLocation,
      pagePath: pagePath ?? this.pagePath,
      pageReferrer: pageReferrer ?? this.pageReferrer,
      pageTitle: pageTitle ?? this.pageTitle,
      screenResolution: screenResolution ?? this.screenResolution,
      userAgent: userAgent ?? this.userAgent,
      userData: userData ?? this.userData,
      userId: userId ?? this.userId,
      value: value ?? this.value,
      viewportSize: viewportSize ?? this.viewportSize,
      ipAddress: ipAddress ?? this.ipAddress,
    );
  }
}
