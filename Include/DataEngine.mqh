#ifndef DATA_ENGINE_MQH
#define DATA_ENGINE_MQH


class CDataEngine
{

private:

   MqlRates rates[];

   datetime lastBarTime;

   int barsLoaded;



public:


   CDataEngine()
   {
      ArraySetAsSeries(rates,true);

      lastBarTime=0;

      barsLoaded=0;
   }



   //================================================
   // Load Market Data
   //================================================

   bool Update()
   {

      int copied =
      CopyRates(
         _Symbol,
         PERIOD_CURRENT,
         0,
         200,
         rates
      );


      if(copied<=0)
         return false;


      barsLoaded=copied;


      return true;

   }



   //================================================
   // Detect New Candle
   //================================================

   bool IsNewBar()
   {

      if(barsLoaded<=0)
         return false;



      if(rates[0].time != lastBarTime)
      {

         lastBarTime=rates[0].time;

         return true;

      }


      return false;

   }



   //================================================
   // OHLC Access
   //================================================


   double Open(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].open;

   }



   double High(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].high;

   }



   double Low(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].low;

   }



   double Close(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].close;

   }



   long Volume(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].tick_volume;

   }



   datetime Time(int index)
   {

      if(index>=barsLoaded)
         return 0;


      return rates[index].time;

   }



   int Count()
   {

      return barsLoaded;

   }



   //================================================
   // Spread Monitor
   //================================================


   double SpreadPoints()
   {

      long spread =
      SymbolInfoInteger(
         _Symbol,
         SYMBOL_SPREAD
      );


      return (double)spread;

   }



};


#endif
