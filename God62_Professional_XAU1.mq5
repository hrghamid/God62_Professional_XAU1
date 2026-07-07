
//+------------------------------------------------------------------+
//| God62 Professional XAU1                                          |
//| Phase 01A - Core Architecture                                    |
//+------------------------------------------------------------------+

#property strict
#property version "1.00"


#include "Include/Constants.mqh"
#include "Include/Config.mqh"
#include "Include/Logger.mqh"
#include "Include/DataEngine.mqh"


CLogger Logger;
CDataEngine MarketData;


//====================================================
// Expert Initialization
//====================================================

int OnInit()
{

   Logger.Info(EA_NAME);
   Logger.Info("Core Architecture Initialized");


   return INIT_SUCCEEDED;

}



//====================================================
// Expert Deinitialization
//====================================================

void OnDeinit(const int reason)
{

   Logger.Info("EA Shutdown");

}



//====================================================
// Main Tick
//====================================================

void OnTick()
{

   if(!MarketData.Update())
      return;


   if(MarketData.IsNewBar())
   {

      Logger.Info("New Candle Detected");

   }


}
