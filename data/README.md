## Banco de dados de pacientes portadores de tumor pontino intrínseco difuso

Os dados apresentados aqui são oriundos de um banco de dados que vem sendo montado desde 2009.
Mais de uma versão está disponível, ilustrando momentos diferentes da evolução deste banco de dados.
Cada versão pode ser vista como um instantâneo das informações presentes no banco de dados num dado momemnto. Estes instantâneos foram armazenados anualmente, estando disponíveis num servidor na nuvem. Entre uma versão e outra, entre um instantâneo e outro, ocorreram mudanças no modo como os dados foram coletados e nos critérios de classificação dos tumores de tronco cerebral, o que refletiu nas diferenças entre as diversas versões do banco de dados. Cada versão refere-se também a uma publicação (ou conjunto delas) em periódicos científicos ou em repositórios acadêmicos (via verde). De uma forma geral, pode-se acompanhar o direcionamento cada vez maior desta base de dados para a transparência e abertura pública
de dados e análises.

Para serem publicados neste repositório, foi preciso primeiramente [desidentificar][deid] as versões do banco de dados. O banco de dados original e suas versões não serão tornados públicos a fim de proteger a confidencialidade dos pacientes envolvidos.

Em 2014 publicamos uma análise retrospectiva de sobrevida no manuscrito do projeto VALQUIRIA, [depositado][val] há alguns meses no repositório ZENODO. Essa análise retrospectiva usou uma versão da base de dados a qual, infelizmente, não foi armazenada. Depositamos aqui neste repositório uma versão o mais próximo possível daquela. A fim de diminuir diferenças, fizemos uma mudança, ao acrescentar o registro do paciente 56. Esta base de dados está armazenada em formato [.csv][dipg].

Em 2015, publicamos um [poster][felix2] no 19º Congresso Brasileiro de Oncologia Clínica com a versão daquele ano da base de dados. Quando depositamos [esta][brainstem] versão da base de dados aqui neste repositório, mudamos a classificação topográfica do paciente 64, de tumor focal da ponte para DIPG. Até o momento, esta é a versão mais atualizada da base de dados.

Adicionalmente, publicamos um [poster][felix1] em 2014, com parte dos dados correspondentes a uma versão do banco de dados intermediária entre as duas depositadas aqui.

Versões em momentos diferentes de bases de dados de sobrevida de pacientes podem ter interpretações diferentes dos resultados das mesmas análises retrospectivas. [Aqui][bases], eu mostro como a mesma análise de sobrevida retorna resultados diferentes nas duas versões da base de dados armazenadas neste repositório.

### Versão de 2014:

- Arquivo: [dipg2014.csv][dipg]
- Formato: valores separados por vírgulas (texto simples)
- Codificação: UTF-8
- Inclusão de dados: pacientes de 0-18 anos diagnosticados com DIPG entre 2000 e 2013 em um único centro hospitalar
- Desidentificação: realizada através da retirada de campos identificadores primários (registro no arquivo hospitalar, nome, procedência) e secundários (data de nascimento, data de diagnóstico, datas dos tratamentos)
- Número de pacientes incluídos: 56

### Versão de 2015:

- Arquivo: [brainstem2015.csv][brainstem]
- Formato: valores separados por vírgulas (texto simples)
- Codificação: UTF-8
- Inclusão de dados: pacientes de 0-18 anos diagnosticados com tumores de tronco cerebral (tanto focais, quanto difusos) entre 2000 e 2015 em um único centro hospitalar
- Desidentificação: realizada através da retirada de campos identificadores primários (registro no arquivo hospitalar, nome, procedência) e secundários (data de nascimento, data de diagnóstico, datas dos tratamentos)
- Número de pacientes incluídos: 87

### Referências:

- Felix, Francisco (2016). Phase IIa (proof of concept) Trial of Valproic Acid with Chemotherapy and Radiotherapy for Patients with Diffuse Intrinsic Pontine Glioma in Childhood and Adolescence - VALQUIRIA. Zenodo. [10.5281/zenodo.44888][val]
- Felix, Francisco H C (2016). Desidentificação - anonimização. Figshare. doi:[10.6084/m9.figshare.3759075.v2][deid]
- Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] doi:[10.7490/f1000research.1111018.1][felix1]
- Felix F, Santos K, Freire P et al. Diffuse intrinsic pontine gliomas: report of patients treated in a brazilian pediatric oncological center [v1; not peer reviewed]. F1000Research 2015, 4:1362 (poster) [Portuguese] doi:[10.7490/f1000research.1111075.1][felix2]
- Felix, Francisco H C (2016). Análise de sobrevida em duas versões do mesmo banco de dados. Figshare. doi:[10.6084/m9.figshare.3759075.v2][bases]

------

## Databank of patients with diffuse intrinsic pontine gliomas (DIPG)

The data presented here are from a database that has been mounted since 2009.
More than one version of it is available, illustrating different stages of development of this database.
Each version can be seen as a snapshot of the information contained in the database at any given time. These snapshots are stored annually and are available on a server in the cloud. Between one version (snapshot) and another, changes were made in the way the data was collected and the classification criteria of brainstem tumors, which reflected in differences between the various versions of the database. Each version also refers to a publication (or set of them) in scientific journals or academic repositories (green way). In general, one can verify the evolution of this database towards increasing transparency and public opening.

Before publishing in this repository, it was first necessary to [de-identify][deid] data in the database. The original database and its versions will not be made public in order to protect the confidentiality of patients involved.

In 2014 we published a retrospective analysis of survival in the VALKYRIE project manuscript, [deposited][val] a few months ago in ZENODO repository. This retrospective analysis used a version of the database which, unfortunately, was not saved. The 2014 version we deposited here in this repository is its closest counterpart. In order to reduce differences, we made a change, by adding patient record 56. This database is stored in [.csv][dipg] format.

In 2015, we published a [poster][felix2] at the 19th Brazilian Congress of Clinical Oncology with that year's version of the database. In [this][brainstem] database version deposited here, we changed the classification of the patient 64 (the same patient 56 in 2014's database version), from focal brainstem tumor to DIPG. This is the most up-to-date version of the database.

In addition, we publish an [poster][felix1] in 2014, with part of the data corresponding to an intermediate version of the database between the two deposited here.

Versions at different times of patient survival data bases may lead to different interpretations of the results of retrospective analyses. [Here][bases], we show how the same survival analysis gives different results using the two versions of the database stored in this repository.

### 2014 Version:

- Archive: [dipg2014.csv][dipg]
- Format: comma separated values (plain text)
- Codification: UTF-8
- Inclusion criteria: patients with 0-18 years diagnosed with DIPG between 2000 and 2013 in a single hospital center
- De-identification: through the deleting of primary (register number, name, geolocation) and secondary identifiers (birth date, diagnosis date, dates of the treatments)
- Number of patients: 56

### 2015 Version:

- Archive: [brainstem2015.csv][brainstem]
- Format: comma separated values (plain text)
- Codification: UTF-8
- Inclusion criteria: patients with 0-18 years diagnosed with brainstem tumors (including focal tumors and DIPG) between 2000 and 2015 in a single hospital center
- De-identification: through the deleting of primary (register number, name, geolocation) and secondary identifiers (birth date, diagnosis date, dates of the treatments)
- Number of patients: 87

### References:

- Felix, Francisco (2016). Phase IIa (proof of concept) Trial of Valproic Acid with Chemotherapy and Radiotherapy for Patients with Diffuse Intrinsic Pontine Glioma in Childhood and Adolescence - VALQUIRIA. Zenodo. [10.5281/zenodo.44888][val]
- Felix, Francisco H C (2016). De-identification - anonymization. Figshare. doi:[10.6084/m9.figshare.3759075.v2][deid]
- Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] doi:[10.7490/f1000research.1111018.1][felix1]
- Felix F, Santos K, Freire P et al. Diffuse intrinsic pontine gliomas: report of patients treated in a brazilian pediatric oncological center [v1; not peer reviewed]. F1000Research 2015, 4:1362 (poster) [Portuguese] doi:[10.7490/f1000research.1111075.1][felix2]
- Felix, Francisco H C (2016). Survival analysis of two versions of a database. Figshare. doi:[10.6084/m9.figshare.3759075.v2][bases]


[val]: https://zenodo.org/record/44888
[deid]: http://dx.doi.org/10.6084/m9.figshare.3545471.v1
[dipg]: https://github.com/fhcflx/valkyrie/blob/gh-pages/_data/dipg.csv
[brainstem]: https://github.com/fhcflx/valkyrie/blob/gh-pages/_data/brainstem2015.csv
[felix1]: https://dx.doi.org/10.7490/f1000research.1111018.1
[felix2]: https://dx.doi.org/10.7490/f1000research.1111075.1
[bases]: http://dx.doi.org/10.6084/m9.figshare.3759075.v2/
