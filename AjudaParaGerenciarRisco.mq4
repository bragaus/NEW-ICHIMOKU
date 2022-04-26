#include <Trade\Trade.mqh>

CTrade trade;
double Ask, Bid;

void OnTick()
  {
      
      ObjectCreate(_Symbol,"BuyButton",OBJ_BUTTON,0,0,0);
      
      // distancia da borda
      ObjectSetInteger(_Symbol,"BuyButton",OBJPROP_XDISTANCE,1);
      ObjectSetInteger(_Symbol,"BuyButton",OBJPROP_YDISTANCE,20);
      
      // largura
      ObjectSetInteger(_Symbol,"BuyButton",OBJPROP_XSIZE,50);
      ObjectSetInteger(_Symbol,"BuyButton",OBJPROP_YSIZE,20);
      
       
      ObjectSetInteger(_Symbol,"BuyButton",OBJPROP_CORNER,1);
      
      // Texto
      ObjectSetString(_Symbol,"BuyButton",OBJPROP_TEXT,"BUY");
      
      //------------
      
      ObjectCreate(_Symbol,"SellButton",OBJ_BUTTON,0,0,0);
      
      // distancia da borda
      ObjectSetInteger(_Symbol,"SellButton",OBJPROP_XDISTANCE,50);
      ObjectSetInteger(_Symbol,"SellButton",OBJPROP_YDISTANCE,20);
      
      // largura
      ObjectSetInteger(_Symbol,"SellButton",OBJPROP_XSIZE,50);
      ObjectSetInteger(_Symbol,"SellButton",OBJPROP_YSIZE,20);
      
       
      ObjectSetInteger(_Symbol,"SellButton",OBJPROP_CORNER,1);
      
      // Texto
      ObjectSetString(_Symbol,"SellButton",OBJPROP_TEXT,"SELL");      
      
  }

void OnChartEvent(const int id,const long& lparam,const double& dparam,const string& sparam)
       {
         if(id == CHARTEVENT_OBJECT_CLICK) {
            if(sparam == "BuyButton")
              {
               Print(SYMBOL_VOLUME_MIN);
                  trade.Buy(0.10);
              }
              
            if(sparam == "SellButton")
              {
                  trade.Sell(0.10);
              }
              
            
         } 
       }