#ifndef CONSTANTS_MQH
#define CONSTANTS_MQH

//==============================
// Project Constants
//==============================

#define EA_NAME        "God62 Professional XAU1"
#define EA_VERSION     "1.0.0"


//==============================
// Signal Direction
//==============================

enum ENUM_SIGNAL_DIRECTION
{
   SIGNAL_NONE = 0,
   SIGNAL_BUY  = 1,
   SIGNAL_SELL = -1
};


//==============================
// Market State
//==============================

enum ENUM_MARKET_STATE
{
   MARKET_UNKNOWN = 0,
   MARKET_TREND   = 1,
   MARKET_RANGE   = 2,
   MARKET_VOLATILE= 3
};


//==============================
// Trading Mode
//==============================

enum ENUM_TRADING_MODE
{
   MODE_NORMAL = 0,
   MODE_SAFE   = 1,
   MODE_DEBUG  = 2
};


#endif
