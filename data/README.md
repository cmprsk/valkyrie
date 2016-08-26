## Banco de dados de pacientes portadores de tumor pontino intrínseco difuso

Os dados apresentados aqui são oriundos de um banco de dados que vem sendo montado desde 2009.
Mais de uma versão está disponível, ilustrando momentos diferentes da evolução deste banco de dados.
Cada versão pode ser vista como um instantâneo das informações presentes no banco de dados num dado momemnto. Estes instantâneos foram armazenados anualmente, estando disponíveis num servidor na nuvem. Entre uma versão e outra, entre um instantâneo e outro, ocorreram mudanças no modo como os dados foram coletados e nos critérios de classificação dos tumores de tronco cerebral, o que refletiu nas diferenças entre as diversas versões do banco de dados. Cada versão refere-se também a uma publicação (ou conjunto delas) em periódicos científicos ou em repositórios acadêmicos (via verde). De uma forma geral, pode-se acompanhar o direcionamento cada vez maior desta base de dados para a transparência e abertura pública
de dados e análises.

Para serem publicados neste repositório, foi preciso primeiramente [desidentificar][deid] as versões do banco de dados. O banco de dados original e suas versões não serão tornados públicos a fim de proteger a confidencialidade dos pacientes envolvidos.

Em 2014 publicamos uma análise retrospectiva de sobrevida no manuscrito do projeto VALQUIRIA, [depositado][val] há alguns meses no repositório ZENODO. Essa análise retrospectiva usou uma versão da base de dados a qual, infelizmente, não foi armazenada. Depositamos aqui neste repositório uma versão o mais próximo possível daquela. A fim de diminuir diferenças, fizemos uma mudança, ao acrescentar o registro do paciente 56. Esta base de dados está armazenada em formato [.csv][dipg].

Em 2015, publicamos um [poster][felix2] no 19º Congresso Brasileiro de Oncologia Clínica com a versão daquele ano da base de dados. Quando depositamos [esta][brainstem] versão da base de dados aqui neste repositório, mudamos a classificação topográfica do paciente 64, de tumor focal da ponte para DIPG. Até o momento, esta é a versão mais atualizada da base de dados.

Adicionalmente, publicamos um [poster][felix1] em 2014, com parte dos dados correspondentes a uma versão do banco de dados intermediária entre as duas depositadas aqui.

### Referências:

- Felix, Francisco. (2016). Phase IIa (proof of concept) Trial of Valproic Acid with Chemotherapy and Radiotherapy for Patients with Diffuse Intrinsic Pontine Glioma in Childhood and Adolescence - VALQUIRIA. Zenodo. [10.5281/zenodo.44888][val]
- [Desidentificação - anonimização][deid]
- Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] (doi: [10.7490/f1000research.1111018.1][felix1])
- Felix F, Santos K, Freire P et al. Diffuse intrinsic pontine gliomas: report of patients treated in a brazilian pediatric oncological center [v1; not peer reviewed]. F1000Research 2015, 4:1362 (poster) [Portuguese] (doi: [10.7490/f1000research.1111075.1][felix2])

[val]: https://zenodo.org/record/44888
[deid]: http://fhcflx.github.io/valkyrie/desidentificação/
[dipg]: https://github.com/fhcflx/valkyrie/blob/gh-pages/_data/dipg.csv
[brainstem]: https://github.com/fhcflx/valkyrie/blob/gh-pages/_data/brainstem2015.csv
[felix1]: https://dx.doi.org/10.7490/f1000research.1111018.1
[felix2]: https://dx.doi.org/10.7490/f1000research.1111075.1
