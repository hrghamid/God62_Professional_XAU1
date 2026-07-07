#ifndef CONFIG_MQH
#define CONFIG_MQH


//==============================
// Main Inputs
//==============================

input group "=== Core Settings ==="

input double InpLotSize = 0.01;

input ulong InpMagicNumber = 62006201;

input int InpMaxSpreadPoints = 350;


//==============================
// Signal Settings
//==============================

input group "=== Signal Engine ==="

input int InpAlmaLength = 9;

input double InpAlmaSigma = 6.0;

input double InpAlmaOffset = 0.85;


//==============================
// Risk Settings
//==============================

input group "=== Risk Management ==="

input bool InpUseATRStop = true;

input int InpATRPeriod = 14;

input double InpATRMultiplier = 3.5;


//==============================
// Session Filter
//==============================

input group "=== Session ==="

input bool InpUseSessionFilter = true;

input int InpLondonStart = 8;

input int InpNewYorkEnd = 22;


#endif
