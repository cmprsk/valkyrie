---
layout: post
title:  "Grupo controle histórico"
date:   2016-06-09 16:03:45 -0300
categories: metodologia
---

O grupo controle histórico compõe-se de pacientes com DIPG, diagnosticados entre 2000 e 2013, que _não_ foram tratados com quimioterapia de acordo com os protocolos HIT do [GPOH](http://www.kinderkrebsinfo.de/gpoh_society/index_eng.html), adaptados. Somente foram selecionados para compor o controle histórico pacientes que receberam radioterapia, na dose de 40 Gy ou maior.

A tabela abaixo mostra as características dos pacientes incluídos no grupo histórico, segundo definido no [projeto](https://github.com/fhcflx/valkyrie/blob/gh-pages/assets/posts/2016-06-09-Grupo-controle-historico/Anteprojeto_VALQUIRIA_HIAS_3.pdf), o qual será comparado com o grupo tratado prospectivamente no ensaio VALQUIRIA. Este grupo foi comparado com o piloto retrospectivo a partir do qual calculamos o número de pacientes a ser recrutado no ensaio.

---

|||*Valor* || *Unidades* || *Dispersão* |||| *Medida* |
|:--- | --- |:---:| --- |:--- | --- |:-------:| --- | --- :| --- |:---:|
|Sexo||||||||||
||Masculino| 12 || - || - || - || *n* |
||Feminino| 19 || - || - || - || *n* |
|Idade || 7.4 || anos || 2.8 - 15.8 || min - max || mediana |
|QT|| 29 || - || - || - || *n* |
||COG-A9952 | 25 || - || - || - || *n* |
||ACNS0126 | 4 || - || - || - || *n* |
|Sobrevida|| 11.4 || meses || 8.1 - 15.6 || IC95% || mediana |
|Tempo para <br> progressão || 7.9 || meses || 6.9 - 10.3 || IC95% || mediana |
|Segunda QT|| 18 || - || - || - || *n* |
||Temozolomida | 7 || - || - || - || *n* |
||ICE/IE | 7 || - || - || - || *n* |
||Vimblastina | 3 || - || - || - || *n* |
||Carbo-VCR | 1 || - || - || - || *n* |
|Segunda RT|| 2 || -  || - || - || *n* |
|Sobrevida após <br> progressão || 84 || dias || 63 - 128 || IC95% || mediana |

---

*Tabela 1: características dos pacientes no grupo controle histórico*
n = número de pacientes
Idade, sobrevida e tempo para progressão expressos em termos de mediana e valores mínimo e máximo.

A segunda tabela mostra os dados tabulados do grupo controle histórico, extraídos de nossa base de dados após _desidentificação_. Os identificadores primários _nome_ (composto pelas iniciais do nome do paciente) e _registro_ (número do prontuário) foram omitidos. Os identificadores secundários _data de nascimento_, _data do diagnóstico_, _data da progressão_ e _censura_ (data da última informação ou óbito) foram substituídos pela _idade_ (idade ao diagnóstico), _sobrevida_, _TPP_ (tempo para progressão). Outras variáreis substituídas: _data do início da quimioterapia_, substituído por _tempo para QT_ (tempo entre o diagnóstico e o início do tratamento quimioterápico) e _data do início da radioterapia_ (tempo entre o diagnóstico e o início do tratamento radioterápico). A base de dados original não será disponibilizada publicamente para preservar a confidencialidade dos pacientes.

---

\# |Sexo| Idade| Sobrevida| Desfecho |ECOG|  QT| Tempo para QT |ciclos| RT| Tempo para RT| TPP
:--- |:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:| ---:
4 |1|11,6| 9,0|1|	|1|259|	3|5400|153|	6,9
5 |0|	5,9| 8,1|1|	|1|226|	4|5040|	16| 6,2
6	|1|	9,9| 7,5|1| |1|  	|  |5400|	  | 2,5
7	|1|	7,7|23,3|1| |1|	15|28|5400|389|10,5
9	|0|	6,1| 7,3|1| |1|216|	2|5400|	35|	6,8
10|1| 6,7| 3,9|1|	|0|		|  |5400|		| 2,2
13|1| 2,8| 4,9|1|3|1|122|	4|5400|   | 4,0
14|0|11,0|30,1|1|1|1|	65|50|5400|141|26,3
15|0|	8,5| 5,3|1|2|1|	24|14|5400|	32|	5,1
16|0|13,4|10,1|1|1|1|		|	 |5400|		| 8,2
17|0|12,8|46,2|1|1|1|	11|	 |5400|		|21,5
19|0|	5,1| 7,3|1|3|1|	24|16|5040|	88|	6,0
21|1|	3,3|13,4|1|1|1|	47|26|5400|	98|10,6
22|1|	7,4|17,4|1|3|1|  0|43|5400|	61|15,2
23|1|	8,4|14,0|1|3|1|  4|22|5400|	11|11,6
24|1|	7,5|16,2|1|2|1|	45|45|5400|	86|12,0
27|1|	6,7| 9,5|1|4|1|		|	 |5400|		| 9,5
28|1|15,8|11,9|1|1|1|		|	 |5400|		| 9,1
30|1|	8,6|15,6|1|3|1|	15|27|5400|122|	7,0
31|0|	8,6|13,8|1|3|1|	22|	8|5400|	28|	7,0
32|0|	5,9| 4,8|1|4|1|		|	 |5400|		|
33|0|	3,6|12,5|1|1|1|	18|	 |5400|	31|	9,5
34|0|	6,2|11,4|1|2|1|	10|	 |5400|	18|	7,8
36|1|14,1| 3,8|1|3|1|		|	 |5400|		| 2,3
38|1|12,0|21,0|1|2|1|	22|  |5400|	29|15,1
39|0|	6,5| 5,0|1|1|0|		|	 |5400|		|
40|1|	3,7|16,9|1|1|9|	35|  |5400|	26|10,3
42|1|	5,2|13,8|0|0|1|	 7|  |5400|220|	6,7
46|1|	8,8|10,2|1|1|9|	78|	7|5400|	27|	7,9
47|1|	6,2| 8,0|1|1|9|	98|  |5400|	20|	4,8
49|1|	4,3|10,4|0|3|9|102|  |5400|	40|	9,3

---

*Tabela 2: pacientes do grupo controle histórico, dados tabulados.*
Sexo: 0 - masculino, 1 - feminino  
Idade: anos  
Sobrevida: meses  
Desfecho: 0 - vivo, 1 - óbito  
ECOG: status performance ao diagnóstico  
QT: 0 - não recebeu quimioterapia, 1 - _as per_ protocolo COG-A9952, 9 - _as per_ protocolo ACNS0126  
Tempo para QT: dias  
ciclos: número de ciclos de quimioterapia realizados  
RT: cGy  
Tempo para RT: dias  
TTP: meses  
O arquivo completo deste banco de dados, contendo as informações sobre todos os pacientes diagnosticados com DIPG em nosso serviço entre 2000-2013 (desidentificado) está disponível em formato [.csv](https://github.com/fhcflx/valkyrie/blob/gh-pages/assets/stat/dipg.csv).

``` Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)```
