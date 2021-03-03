# LIR2450 Coin Battery
- Capacity ~130 mAh
- Charging current ~45mA (0.5C)

Available chargers are suspiciously cheap and rare.

## ICS for charging
- [LTC4071](https://www.analog.com/media/en/technical-documentation/data-sheets/LTC4071.pdf)
- [MCP73831/2](https://cdn-reichelt.de/documents/datenblatt/A200/MCP73831-2_ENG_TDS.pdf)
  Seems easier to use, but does not offer undervoltage protection.
- [MCP73831]

## ICS for protection against undercharge/overcurrent
- [DW01A](https://lcsc.com/product-detail/Battery-Protection-ICs_PUOLOP-DW01A_C351410.html)
  This one I found built-in into protected batteries, but it requires two external MOSFETS.
- [XB6566H](https://datasheet.lcsc.com/szlcsc/1810010232_XySemi-XB6566H0_C190847.pdf)
  Used on the esp32 coin project. Requires minimal external components.
