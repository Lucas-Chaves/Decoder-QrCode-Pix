// 0	Payload Format Indicator
// 1	Point of Initiation Method
//
// 26	Merchant Account Information
// [ 26 ID	EMV Name	Len	Value]
// 0	Globally Unique Identifier
// 25	URL do Payload
//
// 52	Merchant Category Code
// 53	Transaction Currency
// 58	Country Code
// 59	Merchant Name
// 60	Merchant City
// 61	Postal Code
//
// 62	Additional Data Field Template
// [62 ID	EMV Name	Len	Value]
// 5	Reference Label
//
// 63	CRC

Map<String, dynamic> qrCodeDecoder(String qrCode) {
  Map<String, dynamic> qrCodeDecoded = {};
  var qrCodeDecode = qrCode.trim();
  while (qrCodeDecode.isNotEmpty) {
    var code = qrCodeDecode.substring(0, 2);

    var numberOfCode = qrCodeDecode.substring(2, 4);

    var myCodeValue = qrCodeDecode.substring(4, 4 + int.parse(numberOfCode));

    var removeFromString = 0 + int.parse(numberOfCode) + 4;

    if (int.parse(code) == 26 || int.parse(code) == 62) {
      var arrayOfEmv = qrCodeDecoderListItem(
          qrCodeDecode.substring(4, int.parse(numberOfCode) + 4));

      qrCodeDecoded.addAll({code: arrayOfEmv});
      qrCodeDecode =
          qrCodeDecode.substring(removeFromString, qrCodeDecode.length);
      continue;
    }

    qrCodeDecode =
        qrCodeDecode.substring(removeFromString, qrCodeDecode.length);
    qrCodeDecoded.addAll({code: myCodeValue});
  }
  return qrCodeDecoded;
}

List<Map<String, String>> qrCodeDecoderListItem(String qrCode) {
  List<Map<String, String>> qrCodeDecoded = [];
  var qrCodeDecode = qrCode;
  while (qrCodeDecode.isNotEmpty) {
    var code = qrCodeDecode.substring(0, 2);

    var numberOfCode = qrCodeDecode.substring(2, 4);

    var myCodeValue = qrCodeDecode.substring(4, 4 + int.parse(numberOfCode));

    var removeFromString = int.parse(numberOfCode) + 4;

    qrCodeDecode =
        qrCodeDecode.substring(removeFromString, qrCodeDecode.length);

    qrCodeDecoded.add({code: myCodeValue});
  }
  return qrCodeDecoded;
}
