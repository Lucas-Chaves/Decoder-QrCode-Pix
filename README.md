# Decoder Qrcode Pix
Função criada para separar cada informação que venha do QRcode gerado para fazer transações(Pix copia e cola).

## Run
``` dart .\decoder_qr_code_pix.dart YourQRCode ```

#### Exemplos do que pode ser decodificado.

**00**	`Payload Format Indicator` <br />
**01**	`Point of Initiation Method` <br />
 **026**	`Merchant Account Information` <br />
 &nbsp;&nbsp;&nbsp;&nbsp;**00**	`Globally Unique Identifier`<br />
 &nbsp;&nbsp;&nbsp;&nbsp;**25**	`URL do Payload`<br />
 **52**	`Merchant Category Code`<br />
 **53**	`Transaction Currency`<br />
 **58**	`Country Code`<br />
 **59**	`Merchant Name`<br />
 **60**	`Merchant City`<br />
 **61**	`Postal Code`<br />
 **62**	`Additional Data Field Template`<br />
 &nbsp;&nbsp;&nbsp;&nbsp;**05**	`Reference Label`<br />
 **63**	`CRC`<br />


- Para mais informações acesso o site do [banco central.](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Regulamento_Pix/II_ManualdePadroesparaIniciacaodoPix.pdf)
