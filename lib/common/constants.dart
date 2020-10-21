library sendmany.constants;

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

const String heroTagSendManyLogo = 'hero_sendmany_logo';

// Preferences keys
const String prefLanguageCode = 'language_preference';
const String prefTheme = 'theme_preference';
const String prefOnboardingFinished = 'onboarding_finished';
const String prefNumNodes = 'num_nodes';
const String prefPinActive = 'pin_active';
const String prefPin = 'pin_string';
const String prefConnectionData = 'sec_connection_data_json';
const String prefActiveConnection = 'active_node';
const String prefActiveConnectionPubKey = 'active_connection_pubkey';
const String prefLastNumInvoices = 'last_num_invoice';
const String prefLastNumPayments = 'last_num_payments';
const String prefLastNumOnchainTx = 'last_num_onchain_tx';

// Themeing
const sendManyBackground = Color(0xff32333d);
const sendManyBackgroundAccent = Color(0xff26282f);
const sendManyBackgroundCard = Color(0xff393942);
const sendManyPrimaryGreen700 = Color(0xff007d51);
const sendManyPrimaryGreen500 = Color(0xff1eb980);
const sendManyPrimaryGreen300 = Color(0xff37efba);
const sendManyDarkGreen = Color(0xff045d56);
const sendManyOrange300 = Color(0xffff5d56);
const sendManyOrange200 = Color(0xffff857c);
const sendManyOrange50 = Color(0xffff857c);
const sendManyYellow500 = Color(0xffffac12);
const sendManyYellow300 = Color(0xffffcf44);
const sendManyYellow200 = Color(0xffffdc78);
const sendManyPurple300 = Color(0xffa932ff);
const sendManyPurple200 = Color(0xffb15dff);
const sendManyPurple50 = Color(0xffdecaf7);
const sendManyBlue700 = Color(0xff0082fb);
const sendManyBlue200 = Color(0xff72deff);
const sendManyBlue100 = Color(0xffb2f2ff);

const sendManyConfirmedBalance = sendManyPrimaryGreen700;
const sendManyUnconfirmedBalance = sendManyPrimaryGreen500;
const sendManyChannelBalance = sendManyPrimaryGreen300;
const sendManyLocalBalance = Colors.green;
const sendManyRemoteBalance = Colors.amberAccent;

const themeSendMany = 'sendmany';
const themeDark = 'dark';
const themeLight = 'light';

const double defaultHorizontalWhiteSpace = 4.0;

// Background processing
class LocalNotificationChannels {
  static String chatChannelID = 'sendmany_chat';
  static String chatChannelName = 'Chat';
  static String chatChannelDescription = 'Chat messages';

  static String paymentChannelID = 'sendmany_payments';
  static String paymentChannelName = 'Payments';
  static String paymentChannelDescription = 'Incoming or outgoing payments';

  static String channelChannelID = 'sendmany_channels';
  static String channelChannelName = 'Channels';
  static String channelChannelDescription = 'Notifies on channel changes ';
}

/// TLV Records supported by SendMany
class TlvRecords {
  /// Record for sending and receiving tips
  static final Int64 tipRecord = Int64(7629168);

  /// Record for sending and receiving text messages
  static final Int64 msgRecord = Int64(34349334);

  /// Record for including a signature with each package
  static final Int64 sigRecord = Int64(34349337);

  /// Record for including the pubkey of the sender
  static final Int64 senderRecord = Int64(34349339);

  /// Record of the time when the TLV was created
  static final Int64 timeRecord = Int64(34349343);

  /// Record for the preimage
  static final Int64 keySendRecord = Int64(5482373484);
}
