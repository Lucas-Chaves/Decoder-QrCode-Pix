#Decoder Qrcode Pix
Função criada para separar cada informação que venha do QRcode gerado para fazer transações(Pix copia e cola).

##Run
``` dart .\decoder_qr_code_pix.dart YourQRCode ```

#### Exemplos do que pode ser decodificado.

**00**	`Payload Format Indicator`
**01**	`Point of Initiation Method`

 **026**	`Merchant Account Information`
 &nbsp;&nbsp;&nbsp;&nbsp;**00**	`Globally Unique Identifier`
 &nbsp;&nbsp;&nbsp;&nbsp;**25**	`URL do Payload`
 **52**	`Merchant Category Code`
 **53**	`Transaction Currency`
 **58**	`Country Code`
 **59**	`Merchant Name`
 **60**	`Merchant City`
 **61**	`Postal Code`
 **62**	`Additional Data Field Template`
 &nbsp;&nbsp;&nbsp;&nbsp;**05**	`Reference Label`
 **63**	`CRC`


- Para mais informações acesso o site do [banco central.](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Regulamento_Pix/II_ManualdePadroesparaIniciacaodoPix.pdf)
