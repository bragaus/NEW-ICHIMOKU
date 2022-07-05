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
