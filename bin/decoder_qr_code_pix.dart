import 'package:decoder_qr_code_pix/decoder_qr_code_pix.dart'
    as decoder_qr_code_pix;
import 'package:pretty_json/pretty_json.dart';

void main(List<String> arguments) {
  final qrcode =arguments.join(" ");
  
  Map<String, dynamic> qrDecoded = decoder_qr_code_pix.qrCodeDecoder(qrcode);

  printPrettyJson(qrDecoded, indent: 2);
}
