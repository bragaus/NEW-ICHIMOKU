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
      //--- set the display mode for tick volumes
      ChartSetInteger(handle,CHART_SHOW_VOLUMES,CHART_VOLUME_TICK);
 
      while(1<2) {
      //--- prepare a text to output in Comment()
      comm="Scroll 10 bars to the right of the history start";
      //--- show comment
      Comment(comm);
      //--- scroll 10 bars to the right of the history start
      ChartNavigate(handle,CHART_BEGIN,99999999999999999999999999999999999999999999999999999999999);
      //--- get the number of the first bar visible on the chart (numeration like in timeseries)
      long first_bar=ChartGetInteger(0,CHART_FIRST_VISIBLE_BAR,0);
      //--- add line feed character
      comm=comm+"\r\n";
      //--- add to comment
      comm=comm+"The first bar on the chart is number "+IntegerToString(first_bar)+"\r\n";
      //--- show comment
      Comment(comm);
      }
     }

}
