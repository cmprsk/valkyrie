---
layout: post
title:  "Cálculo do número de pacientes"
date:   2016-06-08 16:03:45 -0300
categories: valquiria
---

Quando estávamos concebendo o ensaio VALQUÌRIA, várias considerações diferentes foram feitas sobre a froma de calcular o número de pacientes a ser recrutado para o ensaio. No final, a decisão recaiu sobre a forma como está descrito na metodologia do projeto:

>### 5.7.Tamanho da amostra:
>
O tamanho da amostra não depende da pergunta de partida, a qual não é
comparativa. No entanto, a fim de responder às questões secundárias, foi
necessário calcular um número esperado de pacientes a serem recrutados.
Usando os dados disponíveis dos pacientes já tratados em nosso serviço
(como exposto acima) como grupo piloto, admitindo uma razão de chance de
0,05 e escolhendo um poder estatístico de 80% e alfa de 0,5%, o número
mínimo necessário de pacientes para o grupo experimental (num desenho
1:2) será de 16 pacientes. Espera-se que sejam necessários 2 anos para
recrutar esta amostra. O grupo comparativo a ser usado vai ser o grupo
histórico de pacientes tratados em nosso serviço, entre 2000 e 2013, com
outros esquemas que não o HIT (número de pacientes 31, adequado para o
desenho experimental). O pacote powerSurvEpi da linguagem R foi usado
para calcular o tamanho da amostra (R Development Core Team, 2012).

>### 5.8.Coleta retrospectiva de dados para compor o grupo controle histórico:
>
Os dados coletados para dois outros projetos anteriores, "PERFIL
EPIDEMIOLÓGICO DOS PACIENTES PEDIÁTRICOS COM TUMOR CEREBRAL TRATADOS NO
SERVIÇO DE ONCO-HEMATOLOGIA DO HOSPITAL INFANTIL ALBERT SABIN ENTRE 2000
A 2006” e "AVALIAÇÃO DO TRATAMENTO DE TUMORES CEREBRAIS PEDIÁTRICOS NO
HOSPITAL INFANTIL ALBERT SABIN ENTRE 2007-2010” serão utilizados como
fonte das informações retrospectivas. Além disso, novos dados serão
coletados acerca dos pacientes diagnosticados e tratados entre 2011 e
2013, a fim de completar o período de avaliação retrospectiva. A coleta
de dados seguirá as linhas gerais explicitadas nos projetos citados,
porém será criado um banco de dados digital, integrado à um formulário
eletrônico para coleta e armazenamento de dados. A plataforma do Google
Drive (Google, 2013) e seus recursos serão utilizados. Dessa forma,
serão incluídos na avaliação retrospectiva todos os pacientes
diagnosticados entre 2000 e 2013, um período de 14 anos. Como já
relatado acima, neste período, 57 pacientes foram diagnosticados com
DIPG. Destes, 31 pacientes foram tratados com radioterapia e algum outro
esquema de tratamento diferente do HIT (figura 2). Estes pacientes serão
os incluídos no grupo histórico comparativo.

Script do R (2.X - 3.X) usado para calcular o tamanho amostral no nosso estudo, com o resultado obtido:

```
 > require (powerSurvEpi)
 > ssizeCT.default(power = 0.8, k = 0.5, pE = 0.14, pC = 0.63, RR = 0.05, alpha = 0.05)
nE nC
14 27
```

Onde ```power``` é o poder estatístico (beta, probabilidade de erro tipo 2) escolhido, ```k``` é a razão entre o número de pacientes no grupo experimental e o número de pacientes no grupo controle (histórico), ```pE``` é a probabilidade de falha (evento) no *t*=12 meses no grupo experimental (retirado dos dados de nosso piloto histórico), ```pC``` é a probabilidade de falha (evento) no *t*=12 meses no grupo controle (retirado dos dados de nosso controle histórico), ```RR``` é a razão de chance (hazard ratio) no piloto histórico, ```alpha``` é a probabilidade de erro tipo 1.

Esses números foram obtidos da comparação que eu fizera entre pacientes tratados com protocolos HIT e ácido valpróico *versus* pacientes tratados *as per* protocolos do COG, como mostrei na introdução do projeto:

>
Entre setembro de 2002 e novembro de 2013, 57 pacientes foram
diagnosticados com DIPG em nosso centro hospitalar. A mediana de
sobreviva global (10 meses, IC95% 7,3-13,8) e livre de progressão (7
meses, IC95% 6,2-9,5) de todo o grupo estão dentro dos valores
encontrados na literatura científica. Destes pacientes, 42 fizeram radioterapia (SG =
12 m e SLP = 9 m), enquanto 53 receberam quimioterapia (SG = 10 m e SLP
= 7 m). Do total, 40 pacientes receberam ácido valpróico profilático
desde o diagnóstico (SG = 12 m e SLP = 9 m). Uma comparação univariada
(teste de log-rank) mostrou que tanto a radioterapia (pelo menos 40 Gy)
quanto a quimioterapia correlacionaram-se com maior SG e SLP (p &lt;
0,001). Já a profilaxia com VPA correlacionou-se com melhor SLP (p &lt;
0,001) e uma SG algo melhor (p &lt; 0,05). Três protocolos de
quimioterapia foram utilizados para tratar os pacientes com DIPG. Um
protocolo com doses semanais de carboplatina e vincristina, adaptado do
protocolo A9952 do COG \[Ater, 2012\] para tratamento de glioma de baixo
grau (37 pacientes), um protocolo de temozolomida em ciclos mensais após
a RT \[Cohen, 2011\], adaptado do ensaio ACNS0126 (4 pacientes) e um
protocolo com ciclos de cisplatina, vincristina, ifosfamida e etoposido
durante a RT e manutenção com prednisona, adaptado do HIT-GBM-C/D
\[Wolff, 2010a; Wolff, 2011\] (12 pacientes). Embora o número de
pacientes tratados com o segundo esquema tenha sido muito pequeno,
prejudicando o poder estatístico de qualquer comparação, foi possível
identificar uma grande vantagem de sobrevida nos pacientes que
utilizaram o HIT adaptado (SG em 12 meses de ```86%```, contra ```37%``` dos outros
pacientes combinados, p&lt;0,005, figura 1). Ajustando um modelo de
regressão de riscos proporcionais de Cox, tanto a radioterapia (HR =
0,1; IC95% = 0,04-0,3; p&lt;0,001) quanto a quimioterapia adaptada do
HIT (HR = ```0,05```; IC95% = 0,006-0,36; p&lt;0,005) mostraram prolongar a
SG. Uma vez que quase todos os pacientes que receberam o protocolo
adaptado do HIT também receberam VPA, torna-se impossível separar os
efeitos dos dois componentes do tratamento na sobrevida.

![](https://github.com/fhcflx/valkyrie/blob/gh-pages/assets/posts/2016-06-08-Cálculo-do-número-de-pacientes/pasted-image-30.png?raw=true)
*Gráfico da introdução do projeto, mostrando a curva de sobrevida dos pacientes com DIPG tratados em nosso serviço entre 2000-2013, diferenciados pelo tratamento realizado (em azul, protocolos do HIT com ácido valpróico).*

- Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)
