void Navegador() {
//--- get handle of the current chart
   long handle=ChartID();
   string comm="";
   if(handle>0) // if successful, additionally set up the chart
     {
      //--- disable auto scroll
      ChartSetInteger(handle,CHART_AUTOSCROLL,false);
      //--- set a shift from the right chart border
      ChartSetInteger(handle,CHART_SHIFT,true);
      //--- draw candlesticks
      ChartSetInteger(handle,CHART_MODE,CHART_CANDLES); 
      //--- scroll 10 bars to the right of the history start
      ChartNavigate(handle,CHART_BEGIN,9999999999999999999);
      //--- get the number of the first bar visible on the chart (numeration like in timeseries)


         //while(!IsStopped()) {
         //   ResetLastError();
         //   int n = iBars(_Symbol, );
         //   bool error = is_error();
         //}

     }

}

int day = 1000000;
string symbol = "NAS100";

datetime D1DateTime()
  {

   int count=1;

   datetime time=iTime(symbol,PERIOD_M5,day);//Calculate Time of day
   int err=GetLastError();
   Print("First Error---",(string)err);
   while((err==4066 || err==4073) && !IsStopped())
     {
      time=iTime(symbol,PERIOD_D1,day);
      err=GetLastError();
      Print("Count---",count," Second Error---",(string)err);
      count++;
     }
   if(err==4051) Print("Input too High");
   if(err!=4051 && time==0) Print("Another Error");

   Print("Input---",day,"   Time---",time);
   return(time);
  }
