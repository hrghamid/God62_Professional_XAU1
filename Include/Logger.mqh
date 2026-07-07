#ifndef LOGGER_MQH
#define LOGGER_MQH


class CLogger
{

private:

   bool enabled;


public:


   CLogger()
   {
      enabled=true;
   }


   void Enable(bool state)
   {
      enabled=state;
   }



   void Info(string message)
   {
      if(enabled)
         Print("[INFO] ",message);
   }



   void Error(string message)
   {
      Print("[ERROR] ",message);
   }


};


#endif
