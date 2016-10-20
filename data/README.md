## Banco de dados de pacientes portadores de tumor de tronco cerebral

Os dados apresentados aqui são oriundos de um banco de dados que vem sendo montado desde 2009.
Mais de uma versão está disponível, ilustrando momentos diferentes da evolução deste banco de dados.
Cada versão pode ser vista como um instantâneo das informações presentes no banco de dados num dado momento. Estes instantâneos foram armazenados anualmente, estando disponíveis num servidor na nuvem. Entre uma versão e outra, entre um instantâneo e outro, ocorreram mudanças no modo como os dados foram coletados e nos critérios de classificação dos tumores de tronco cerebral, o que refletiu nas diferenças entre as diversas versões do banco de dados. Cada versão refere-se também a uma publicação (ou conjunto delas) em periódicos científicos ou em repositórios acadêmicos (via verde). De uma forma geral, pode-se acompanhar o direcionamento cada vez maior desta base de dados para a transparência e abertura pública
de dados e análises.

Para serem publicados neste repositório, foi preciso primeiramente [desidentificar][deid] as versões do banco de dados. O banco de dados original e suas versões não serão tornados públicos a fim de proteger a confidencialidade dos pacientes envolvidos.

Em 2014 publicamos uma análise retrospectiva de sobrevida no manuscrito do projeto VALQUIRIA, [depositado][val] há alguns meses no repositório ZENODO. Essa análise retrospectiva usou uma versão da base de dados a qual, infelizmente, não foi armazenada. Depositamos aqui neste repositório uma versão o mais próximo possível daquela. A fim de diminuir diferenças, fizemos uma mudança, ao acrescentar o registro do [paciente 56][commit]. Esta base de dados está armazenada em formato [.csv][dipg].

Em 2015, publicamos um [poster][felix2] no 19º Congresso Brasileiro de Oncologia Clínica com a versão daquele ano da base de dados. Quando depositamos [esta][brainstem] versão da base de dados aqui neste repositório, mudamos a classificação topográfica do [paciente 64][commit2], de tumor focal da ponte para DIPG. Até o momento, esta é a versão mais atualizada da base de dados.

Adicionalmente, publicamos um [poster][felix1] em 2014, com parte dos dados correspondentes a uma versão do banco de dados intermediária entre as duas depositadas aqui.

Versões em momentos diferentes de bases de dados de sobrevida de pacientes podem ter interpretações diferentes dos resultados das mesmas análises retrospectivas. [Aqui][bases], eu mostro como a mesma análise de sobrevida retorna resultados diferentes nas duas versões da base de dados armazenadas neste repositório.

### Versão de 2014:

- Arquivo: [dipg2014.csv][dipg]
- Formato: valores separados por vírgulas (texto simples)
- Codificação: UTF-8
- Inclusão de dados: pacientes de 0-18 anos diagnosticados com DIPG entre 2000 e 2013 em um único centro hospitalar
- Desidentificação: realizada através da retirada de campos identificadores primários (registro no arquivo hospitalar, nome, procedência) e secundários (data de nascimento, data de diagnóstico, datas dos tratamentos)
- Número de pacientes incluídos: 56
- Variáveis:
   - sex: sexo (0 = masculino, 1 = feminino)
   - age: idade (anos)
   - os: sobrevida global, em meses
   - status: desfecho (0 = vivo, 1 = falecido)
   - ecog: escala de performance status do Eastern Cooperative Oncology Group, varia de 0-4 (ao diagnóstico)
   - chemo: esquema de quimioterapia de primeira linha
   - tt.chemo: tempo entre o diagnóstico e o início da primeira linha de tratamento, em dias
   - cycles1: número de ciclos de QT na primeira linha de tratamento
   - rt: dose da radioterapia (primeira linha), em cGy
   - tt.rt: tempo entre o diagnóstico e o início da primeira RT, em dias
   - ttp: tempo para progressão, em meses
   - os2: sobrevida global após a progressão, em dias
   - ecog2: escala de performance status do Eastern Cooperative Oncology Group, varia de 0-4 (na progressão)
   - chemo2: esquema de quimioterapia de segunda linha
   - tt.chemo2: tempo entre a progressão e o início da segunda linha de tratamento, em dias
   - cycles2: número de ciclos de QT na segunda linha de tratamento
   - rt2: dose da radioterapia (segunda linha), em cGy
   - chemo3: esquema de quimioterapia de terceira linha
   - alcarbo: alergia à carboplatina
   - cical: ciclo quando ocorreu a reação alérgica
   - cap: uso de captopril (0 = não, 1 = desde o diagnóstico, 2 = desde a progressão)
   - eiaed: uso de antiepilépticos indutores de enzimas hepáticas (0 = não, 1 = sim)
   - vpa: uso de ácido valpróico (0 = não, 1 = sim)
   - conv: ocorrência de convulsões após o diagnóstico (0 = não, 1 = sim)
   - cns.bleed: evento vascular cerebral (0 = nenhum, 1 = hematoma subdural espontâneo, 6 = trombose venosa central)
   - infec: episódios de infecção grau III-IV, [CTC 2.0][ctc2], (0 = não, 1 = sim)
   - hemo: mielossupressão grau III-IV, [CTC 2.0][ctc2], (0 = não, 1 = sim)
   - neuro: neurotoxicidade grau III-IV, [CTC 2.0][ctc2], (0 = não, 1 = sim)

### Versão de 2015:

- Arquivo: [brainstem2015.csv][brainstem]
- Formato: valores separados por vírgulas (texto simples)
- Codificação: UTF-8
- Inclusão de dados: pacientes de 0-18 anos diagnosticados com tumores de tronco cerebral (tanto focais, quanto difusos) entre 2000 e 2015 em um único centro hospitalar
- Desidentificação: realizada através da retirada de campos identificadores primários (registro no arquivo hospitalar, nome, procedência) e secundários (data de nascimento, data de diagnóstico, datas dos tratamentos)
- Número de pacientes incluídos: 87
- Variáveis:
   - sex: sexo (0 = masculino, 1 = feminino)
   - age: idade (anos)
   - os: sobrevida global, em meses
   - status: desfecho (0 = vivo, 1 = falecido)
   - histo: histologia do tumor
   - topo: topografia do tumor
   - ecog: escala de performance status do Eastern Cooperative Oncology Group, varia de 0-4 (ao diagnóstico)
   - lpps: Lansky Play Performance Scale, varia de 10 a 100
   - chemo: esquema de quimioterapia de primeira linha
   - tt.chemo: tempo entre o diagnóstico e o início da primeira linha de tratamento, em dias
   - cycles: número de ciclos de QT na primeira linha de tratamento
   - delta.chemo: duração da primeira linha de tratamento, em dias
   - rt: dose da radioterapia (primeira linha), em cGy
   - tt.rt: tempo entre o diagnóstico e o início da primeira RT, em dias
   - surgery: abordagem cirúrgica (0 = nenhuma, 2 = biópsia)
   - prog: progressão após o tratamento de primeira linha
   - ttp: tempo para progressão, em meses
   - os2: sobrevida global após a progressão, em dias
   - ecog2: escala de performance status do Eastern Cooperative Oncology Group, varia de 0-4 (na progressão)
   - chemo2: esquema de quimioterapia de segunda linha
   - tt.chemo2: tempo entre a progressão e o início da segunda linha de tratamento, em dias
   - cycles2: número de ciclos de QT na segunda linha de tratamento
   - delta.chemo2: duração da segunda linha de tratamento, em dias
   - rt2: dose da radioterapia (segunda linha), em cGy
   - tt.rt2 tempo entre o diagnóstico e o início da segunda RT, em dias
   - prog2: progressão após o tratamento de segunda linha
   - ttp2: tempo para progressão, em meses, após a primeira progressão
   - chemo3: esquema de quimioterapia de terceira linha
   - tt.chemo3: tempo entre a segunda progressão e o início da terceira linha de tratamento, em dias
   - cycles3: número de ciclos de QT na terceira linha de tratamento
   - delta.chemo3: duração da terceira linha de tratamento, em dias
   - prog3: progressão após o tratamento de terceira linha
   - ttp3: tempo para progressão, em meses, após a segunda progressão
   - chemo4: esquema de quimioterapia de quarta linha
   - tt.chemo4: tempo entre a terceira progressão e o início da quarta linha de tratamento, em dias
   - cycles4: número de ciclos de QT na quarta linha de tratamento
   - delta.chemo4: duração da quarta linha de tratamento, em dias
   - alcarbo: alergia à carboplatina
   - cical: ciclo quando ocorreu a reação alérgica
   - cap: uso de captopril (0 = não, 1 = desde o diagnóstico, 2 = desde a progressão)
   - eiaed: uso de antiepilépticos indutores de enzimas hepáticas (0 = não, 1 = sim)
   - vpa: uso de ácido valpróico (0 = não, 1 = sim)
   - conv: ocorrência de convulsões após o diagnóstico (0 = não, 1 = sim)
   - cns.bleed: evento vascular cerebral (0 = nenhum, 1 = hematoma subdural espontâneo, 6 = trombose venosa central)
   - infec: número de episódios de infecção grau III-IV, [CTC 2.0][ctc2]
   - hemo: mielossupressão grau III-IV, [CTC 2.0][ctc2], (0 = não, 1 = sim)
   - endoc: toxicidade endócrina, [CTC 2.0][ctc2], (0 = não, 1 = sim)
   - neuro: neurotoxicidade grau III-IV, [CTC 2.0][ctc2], (0 = não, 1 = sim)

### Referências:

- Felix, Francisco (2016). Phase IIa (proof of concept) Trial of Valproic Acid with Chemotherapy and Radiotherapy for Patients with Diffuse Intrinsic Pontine Glioma in Childhood and Adolescence - VALQUIRIA. Zenodo. [10.5281/zenodo.44888][val]
- Felix, Francisco H C (2016). Desidentificação - anonimização. Figshare. doi:[10.6084/m9.figshare.3759075.v2][deid]
- Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] doi:[10.7490/f1000research.1111018.1][felix1]
- Felix F, Santos K, Freire P et al. Diffuse intrinsic pontine gliomas: report of patients treated in a brazilian pediatric oncological center [v1; not peer reviewed]. F1000Research 2015, 4:1362 (poster) [Portuguese] doi:[10.7490/f1000research.1111075.1][felix2]
- Felix, Francisco H C (2016). Análise de sobrevida em duas versões do mesmo banco de dados. Figshare. doi:[10.6084/m9.figshare.3759075.v2][bases]
- Saad ED, Hoff PM, Carnelós RP, Katz A, Novis YAS, Pietrocola M, et al. Critérios comuns de toxicidade do Instituto Nacional de Câncer dos Estados Unidos. [Rev Bras Cancerol. 2002;48(10):63-96.][ctc2]

------

## Database of patients with brainstem tumors

The data presented here are from a database that has been developed since 2009.
More than one version of it is available, illustrating different stages of development of this database.
Each version can be seen as a snapshot of the information contained in the database at any given time. These snapshots are stored annually and are available on a server in the cloud. Between one version (snapshot) and another, changes were made in the way the data was collected and the classification criteria of brainstem tumors, which reflected in differences between the various versions of the database. Each version also refers to a publication (or set of them) in scientific journals or academic repositories (green way). In general, one can verify the evolution of this database towards increasing transparency and public opening.

Before publishing in this repository, it was first necessary to [de-identify][deid] data in the database. The original database and its versions will not be made public in order to protect the confidentiality of patients involved.

In 2014 we published a retrospective analysis of survival in the VALKYRIE project manuscript, [deposited][val] a few months ago in ZENODO repository. This retrospective analysis used a version of the database which, unfortunately, was not saved. The 2014 version we deposited here in this repository is its closest counterpart. In order to reduce differences, we made a change, by adding [patient record 56][commit]. This database is stored in [.csv][dipg] format.

In 2015, we published a [poster][felix2] at the 19th Brazilian Congress of Clinical Oncology with that year's version of the database. In [this][brainstem] database version deposited here, we changed the classification of the [patient 64][commit2] (the same patient 56 in 2014's database version), from focal brainstem tumor to DIPG. This is the most up-to-date version of the database.

In addition, we publish an [poster][felix1] in 2014, with part of the data corresponding to an intermediate version of the database between the two deposited here.

Versions at different times of patient survival data bases may lead to different interpretations of the results of retrospective analyses. [Here][bases], we show how the same survival analysis gives different results using the two versions of the database stored in this repository.

### 2014 Version:

- Archive: [dipg2014.csv][dipg]
- Format: comma separated values (plain text)
- Codification: UTF-8
- Inclusion criteria: patients with 0-18 years diagnosed with DIPG between 2000 and 2013 in a single hospital center
- De-identification: through the deleting of primary (register number, name, geolocation) and secondary identifiers (birth date, diagnosis date, dates of the treatments)
- Number of patients: 56
- Variable list:
   - sex: 0 = amle, 1 = female
   - age: years
   - os: overall survival, months
   - status: 0 = alive, 1 = dead
   - ecog: Eastern Cooperative Oncology Group performance scale, range 0-4 (at diagnosis)
   - chemo: first line chemotherapy protocol
   - tt.chemo: time from diagnosis to first line chemotherapy, days
   - cycles1: number of cycles, first line chemotherapy
   - rt: first line radiotherapy dose, cGy
   - tt.rt: time from diagnosis to first line radiation therapy, days
   - ttp: time to progression, months
   - os2: survival after progression, days
   - ecog2: Eastern Cooperative Oncology Group performance scale, range 0-4 (on progression)
   - chemo2: second line chemotherapy protocol
   - tt.chemo2: time from progression to second line chemotherapy, days
   - cycles2: number of cycles, second line chemotherapy
   - rt2: second line radiotherapy dose, cGy
   - chemo3: third line chemotherapy protocol
   - alcarbo: alergy to carboplatin
   - cical: cycle when alergic reaction occurred
   - cap: captopril use (0 = no, 1 = from diagnosis, 2 = from progression)
   - eiaed: enzyme-inducing anti-epileptic drugs (0 = no, 1 = yes)
   - vpa: valproic acid use (0 = no, 1 = yes)
   - conv: seizures after diagnosis (0 = no, 1 = yes)
   - cns.bleed: cerebrovascular event (0 = none, 1 = spontaneous subdural hematoma, 6 = central venous thrombosis)
   - infec: grade III-IV infection episodes, [CTC 2.0][ctc2en], (0 = no, 1 = yes)
   - hemo: grade III-IV myelossupression, [CTC 2.0][ctc2en], (0 = no, 1 = yes)
   - neuro: grade III-IV neurotoxicity, [CTC 2.0][ctc2en], (0 = no, 1 = yes)

### 2015 Version:

- Archive: [brainstem2015.csv][brainstem]
- Format: comma separated values (plain text)
- Codification: UTF-8
- Inclusion criteria: patients with 0-18 years diagnosed with brainstem tumors (including focal tumors and DIPG) between 2000 and 2015 in a single hospital center
- De-identification: through the deleting of primary (register number, name, geolocation) and secondary identifiers (birth date, diagnosis date, dates of the treatments)
- Number of patients: 87
- Variable list:
   - sex: 0 = amle, 1 = female
   - age: years
   - os: overall survival, months
   - status: 0 = alive, 1 = dead
   - histo: histology
   - topo: anatomic site
   - ecog: Eastern Cooperative Oncology Group performance scale, range 0-4 (at diagnosis)
   - lpps: Lansky Play Performance Scale, range 10-100
   - chemo: first line chemotherapy protocol
   - tt.chemo: time from diagnosis to first line chemotherapy, days
   - cycles: number of cycles, first line chemotherapy
   - delta.chemo: first line chemotherapy duration, days
   - rt: first line radiotherapy dose, cGy
   - tt.rt: time from diagnosis to first line radiation therapy, days
   - surgery: 0 = none, 2 = biopsy
   - prog: progression after first line chemotherapy
   - ttp: time to progression, months
   - os2: survival after progression, days
   - ecog2: Eastern Cooperative Oncology Group performance scale, range 0-4 (on progression)
   - chemo2: second line chemotherapy protocol
   - tt.chemo2: time from progression to second line chemotherapy, days
   - cycles2: number of cycles, second line chemotherapy
   - delta.chemo2: second line chemotherapy duration, days
   - rt2: second line radiotherapy dose, cGy
   - tt.rt2: time from progression to second line radiation therapy, days
   - prog2: progression after second line chemotherapy
   - ttp2: time from first progression to second progression, months
   - chemo3: third line chemotherapy protocol
   - tt.chemo3: time from second progression to third line chemotherapy, days
   - cycles3: number of cycles, third line chemotherapy
   - delta.chemo3: third line chemotherapy duration, days
   - prog3: progression after third line chemotherapy
   - ttp3: time from second progression to third progression, months
   - chemo4: fourth line chemotherapy protocol
   - tt.chemo4: time from third progression to fourth line chemotherapy, days
   - cycles4: number of cycles, fourth line chemotherapy
   - delta.chemo4: fourth line chemotherapy duration, days
   - alcarbo: alergy to carboplatin
   - cical: cycle when alergic reaction occurred
   - cap: captopril use (0 = no, 1 = from diagnosis, 2 = from progression)
   - eiaed: enzyme-inducing anti-epileptic drugs (0 = no, 1 = yes)
   - vpa: valproic acid use (0 = no, 1 = yes)
   - conv: seizures after diagnosis (0 = no, 1 = yes)
   - cns.bleed: cerebrovascular event (0 = none, 1 = spontaneous subdural hematoma, 6 = central venous thrombosis)
   - infec: grade III-IV infection episodes, [CTC 2.0][ctc2en], (0 = no, 1 = yes)
   - hemo: grade III-IV myelossupression, [CTC 2.0][ctc2en], (0 = no, 1 = yes)
   - endoc: endocrine toxicity, [CTC 2.0][ctc2], (0 = no, 1 = yes)
   - neuro: grade III-IV neurotoxicity, [CTC 2.0][ctc2en], (0 = no, 1 = yes)

### References:

- Felix, Francisco (2016). Phase IIa (proof of concept) Trial of Valproic Acid with Chemotherapy and Radiotherapy for Patients with Diffuse Intrinsic Pontine Glioma in Childhood and Adolescence - VALQUIRIA. Zenodo. [10.5281/zenodo.44888][val]
- Felix, Francisco H C (2016). De-identification - anonymization. Figshare. doi:[10.6084/m9.figshare.3759075.v2][deid]
- Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] doi:[10.7490/f1000research.1111018.1][felix1]
- Felix F, Santos K, Freire P et al. Diffuse intrinsic pontine gliomas: report of patients treated in a brazilian pediatric oncological center [v1; not peer reviewed]. F1000Research 2015, 4:1362 (poster) [Portuguese] doi:[10.7490/f1000research.1111075.1][felix2]
- Felix, Francisco H C (2016). Survival analysis of two versions of a database. Figshare. doi:[10.6084/m9.figshare.3759075.v2][bases]

This Database of patients with brainstem tumors is made available under the Open Data Commons Public Dedication and License: http://opendatacommons.org/licenses/pddl/1.0/

<a href="http://opendefinition.org/ossd/" title="Open Online Software Service">
  <img src="http://assets.okfn.org/images/ok_buttons/os_80x15_orange_grey.png" alt="" border="" />
</a>
<a href="http://opendefinition.org/" title="Open Content">
  <img src="http://assets.okfn.org/images/ok_buttons/oc_80x15_blue.png" alt="" border="" />
</a>

[val]: https://zenodo.org/record/44888
[deid]: http://dx.doi.org/10.6084/m9.figshare.3545471.v1
[dipg]: dipg2014.csv
[brainstem]: brainstem2015.csv
[felix1]: https://dx.doi.org/10.7490/f1000research.1111018.1
[felix2]: https://dx.doi.org/10.7490/f1000research.1111075.1
[bases]: http://dx.doi.org/10.6084/m9.figshare.3759075.v2
[ctc2]: artigo6.pdf
[ctc2en]: ctcv20_4-30-992.pdf
[commit]: https://github.com/fhcflx/valkyrie/commit/9276c7a0e84f29e1eeea36c087ca52eed3306a16
[commit2]: https://github.com/fhcflx/valkyrie/commit/9934e6adf920bc2d4443d77e24dd2b810e6119bc#diff-8d777f385d3dfec8815d20f7496026dc
