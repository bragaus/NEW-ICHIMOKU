# Sinal Clássico do Ichimoku 🙏

Este robô foi desenvolvido para **enviar o Sinal Clássico do Ichimoku** diretamente para um **bot no Telegram**.

---

## 📈 Foco do Projeto: Nasdaq 100 Cash

O **mercado-alvo** deste projeto é o **índice Nasdaq 100 Cash**.

🔍 Todos os parâmetros da estratégia, os filtros e as condições foram **ajustados e validados** especificamente para o comportamento do **Nasdaq 100 Cash**.

---

> 💬 Este projeto nasceu de um estudo aprofundado com base no livro **Guide complet du trading avec Ichimoku** da **Karen Peloille** e na experiência direta com **traders da França**.
> Segue abaixo um estudo completo sobre o sinal, suas formulas e como usar no trade

# 🖥️ Indicador Ichimoku Kinko Hyo

## 📡 Introdução ao Sistema

No universo do **trading**, o método Ichimoku é uma referência obrigatória.

O **Ichimoku Kinko Hyo** é uma ferramenta de **análise técnica** que trabalha com os **candles japoneses**, levando em consideração **ação de preço (price action)** e **tempo** ao mesmo tempo.

📈 Desenvolvido no Japão e adotado por traders de toda a Ásia, o Ichimoku tem conquistado popularidade global entre analistas técnicos.

---

## 👤 Goichi Hosoda — O Arquiteto por trás do Ichimoku

O método **Ichimoku Kinko Hyo**, ou simplesmente **Ichimoku**, foi criado pelo **jornalista japonês Goichi Hosoda** (1898–1982), também conhecido como **“Ichimoku Sanjin”**.

🧠 Sua técnica se baseia nos **candles japoneses**, com o objetivo de realizar **previsões de alta precisão sobre as flutuações de mercado**, incorporando a dimensão do **tempo** ao processo de análise.

☑️ Goichi Hosoda buscava criar um método que sintetizasse **ação de preço + tempo + contexto de mercado**, com uma filosofia semelhante à de **William Delbert Gann**.

---

## 🧬 Origem do Nome: Ichimoku Kinko Hyo

O nome carrega o conceito central da metodologia:

| 🧩 Termo      | 🧭 Significado                |
|---------------|------------------------------|
| `Ichimoku`    | "De um só olhar"             |
| `Kinko`       | "Equilíbrio"                 |
| `Hyo`         | "Curva" / "Gráfico"          |

🎯 **Missão do método:**  
Permitir ao trader **"ver o equilíbrio do mercado em um único olhar"**, trazendo uma visão consolidada e instantânea da situação dos preços.

---

## 📚 Desenvolvimento da Metodologia Ichimoku

Para aprimorar sua técnica, **Goichi Hosoda** recrutou um grupo de estudantes que realizavam manualmente os cálculos das curvas, levando em consideração diferentes critérios matemáticos e estatísticos.

🕒 Foram necessários quase **20 anos de pesquisa** para isolar os parâmetros que hoje conhecemos como os valores padrão do sistema Ichimoku.

---

## ⚙️ Fórmulas Originais de Goichi Hosoda 🤙📑

> Desenvolvidas após quase 20 anos de pesquisa manual com assistentes, sem computadores, na década de 1930\~1960.

| Linha             | Fórmula Matemática                                            | Descrição                                  |
| ----------------- | ------------------------------------------------------------- | ------------------------------------------ |
| **Tenkan-sen**    | `(Máxima_9 + Mínima_9) / 2`                                   | Linha de Conversão (curto prazo)           |
| **Kijun-sen**     | `(Máxima_26 + Mínima_26) / 2`                                 | Linha Base (médio prazo)                   |
| **Senkou Span A** | `(Tenkan + Kijun) / 2`, deslocada 26 períodos à frente        | Borda rápida da nuvem (projeção futura)    |
| **Senkou Span B** | `(Máxima_52 + Mínima_52) / 2`, deslocada 26 períodos à frente | Borda lenta da nuvem (suporte longo prazo) |
| **Chikou Span**   | `Fechamento_atual`, deslocado 26 períodos para trás           | Linha de atraso (confirmação de tendência) |

<p align="left">
  <img src="./ichimoku_apresentacao.png" width="900"/>
</p>

---

## 🌫️ Sobre a Kumo (Nuvem) ☁️

- Área entre **Span A** e **Span B**
- **Espessura** = volatilidade 🛁
- **Cor**: Altista (verde) ou Baixista (vermelha) 🚦
- **Projeção futura** = suporte/resistência projetados 🔮

---

## 🕒 Por que os parâmetros 9-26-52? ⏳

| Parâmetro | Origem Histórica                                | Significado |
| --------- | ----------------------------------------------- | ----------- |
| **9**     | \~1,5 semanas de pregão no Japão dos anos 30-40 | Curto prazo |
| **26**    | \~1 mês comercial japonês                       | Médio prazo |
| **52**    | \~2 meses de pregão                             | Longo prazo |

### 🧪 Detalhe Importante:

> Esses números **não foram escolhidos por acaso**!\
> Foram resultado de **décadas de backtests manuais** conduzidos por Hosoda e seus assistentes.\
> ✅ Testaram diversas combinações\
> ✅ Focaram na eficácia dos sinais\
> ✅ Validaram no mercado japonês da época

---

## 📚 Processo de Pesquisa: 20 Anos de Testes Manuais 📁

- 🏢 Hosoda montou um instituto de pesquisa
- 🧑‍🎓 Contou com estudantes como assistentes
- 📈 Fizeram simulações de trade manualmente em papel milimetrado
- 📏 Avaliaram quais combinações geravam os melhores resultados
- 🤫 Método permaneceu secreto até 1968

---
