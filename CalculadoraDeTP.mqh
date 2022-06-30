void tal() {

   int ListaDeIdentificadorDaBarraMensalLocalizada[], TotalDeBarraMensal;
   
   LocalizarBarraMensalEmQueOPrecoEstaTrabalhando(ListaDeIdentificadorDaBarraMensalLocalizada);
   ArraySort(ListaDeIdentificadorDaBarraMensalLocalizada,WHOLE_ARRAY,0,MODE_DESCEND);

   TotalDeBarraMensal = ArraySize(ListaDeIdentificadorDaBarraMensalLocalizada);
   
   for(int BarraMensal = 0; BarraMensal < TotalDeBarraMensal; BarraMensal++) {
      
      datetime DateTime = iTime(_Symbol,PERIOD_MN1,ListaDeIdentificadorDaBarraMensalLocalizada[BarraMensal]);
      Print("Data Mensal: "+DateTime);

      int Shift = iBarShift(_Symbol,PERIOD_M5,DateTime);
      Print("Barra M1 "+Shift);

      DateTime = iTime(_Symbol,PERIOD_M1,Shift);
      Print("Data M1 Alcançada: "+DateTime);

   }

   //CopyRates(_Symbol,PERIOD_M1,,,ListaDeBarraParaRecuperarValorDoLimiteDeLucro);
   

}

void LocalizarBarraMensalEmQueOPrecoEstaTrabalhando(int& ListaDeIdentificadorDaBarraMensalLocalizada[]) {
   
   int TotalDeBarraMensal = iBars(_Symbol,PERIOD_MN1), BarraMensal = 0, ContadorDeBarraLocalizada = 0; 
   double PrecoMaximoDaBarraMensal = 0, PrecoMinimoDaBarraMensal = 0;

   MqlRates ListaDeBarraParaRecuperarValorDoLimiteDeLucro;

   while(BarraMensal < TotalDeBarraMensal) {
      
      PrecoMaximoDaBarraMensal = iHigh(_Symbol,PERIOD_MN1,BarraMensal);
      PrecoMinimoDaBarraMensal = iLow(_Symbol,PERIOD_MN1,BarraMensal);

      if(PrecoMaximoDaBarraMensal > Ask && PrecoMinimoDaBarraMensal < Ask) {
         
         ContadorDeBarraLocalizada++;
         ArrayResize(ListaDeIdentificadorDaBarraMensalLocalizada, ContadorDeBarraLocalizada);
         ListaDeIdentificadorDaBarraMensalLocalizada[ContadorDeBarraLocalizada-1] = BarraMensal;
         
      }

      BarraMensal++;
   
   }

   
}

