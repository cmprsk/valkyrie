---
layout: post
comments: true
title:  "De-identification - anonymization"
date:   2016-06-15 16:03:45 -0300
categories: metodologia
ref: anonymize
lang: en
permalink: /de-identification/
---
>NOT TRANSLATED YET

### De-identification, anonymization, pseudoanonymization, re-identification

National Institute of Standards and Technology (NIST) documentation declares that the use of these terms is still unclear. Words _de-identification_, _anonymization_ and _pseudoanonymization_ are sometimes interchangeable, sometimes carrying subtle different meanings. To mitigate ambiguity, NIST use definitions from [ISO/TS 25237:2008][iso]:

> de-identification: “general term for any process of removing the association between a set of identifying data and the data subject.” [p. 3]  
anonymization: “process that removes the association between the identifying dataset and the data subject.” [p. 2]  
pseudonymization: “particular type of anonymization that both removes the association with a data subject and adds an association between a particular set of characteristics relating to the data subject and one or more pseudonyms.”1 [p. 5]

Brazilian portuguese literature largely lacks this terminology, and they are more often used in law or information technology. The utilization of these concepts in health care and research has a specific conceptualization. [HIPAA (Health Insurance Portability and Accountability Act)][hipaa], US regulamentation of health data privacy protection, establishes standards for patient personal information  (_protected health information - PHI_) handling by health care providers.

According to HIPAA, a research entity can disclose patient provided these requirements are met:  
1. Signed informed consent.  
2. Adequate documentation from an institutional review board or .  
3. Uso ou publicação de PHI em anteprojetos, revisões, relatórios, publicações acadêmicas, etc, desde que sob a responsabilidade dos pesquisadores e obedecendo à lei em vigor.  
4. Disponibilização de um conjunto de dados limitado, sob um termo de uso de informações que deve ser celebrado com os usuários ou audiência do trabalho.  
5. Uso ou publicação da informação de forma _desidentificada_, neste caso não configurando mais uso de PHI.

According to HIPAA, de-identifying PHI involve the method of "[safe harbor][safeharbor]", where a pre-defined set of identifiers is removed from the PHI, or statistical modifications by experienced professionals in order to reduce to an acceptable level the risk that a third party can identify patients through remaining information (_re-identification_). The identifiers to be removed by the method of "safe harbor" include:  
1. Nomes próprios  
2. Subdivisões geográficas menores que um "estado", incluindo códigos de endeçamento postal (CEP).  
3. Todas as datas (exceto ano).  
4. Números de telefone.  
5. Identificação de veículos (placas, números de série de chassi, etc).  
6. Números de fax.  
7. Identificadores de dispositivos (números seriais, IMEI, etc).  
8. Endereços de correio eletrônico.  
9. URLs de páginas que possam localizar/identificar o indivíduo.  
10. Números de identidade (_social security number_ nos EUA).  
11. Endereços IP.  
12. Números de registros médicos (prontuários).  
13. Identificadores biométricos, incluindo digital e identificação por voz.  
14. Números de cliente de empresas de saúde.  
15. Fotografias de face inteira (ou equivalentes).  
16. Números de contas bancárias.  
17. Quaisquer outros identificadores pessoais, exceto os expressamente permitidos por lei.  
18. Números de certificados ou licenças.  

HIPAA also requires a health research entity's statement that it ignores any methods someone could use to combine the remaining data to identify individuals. However, HIPAA explicitly indicates that the use of properly de-identified data do not need authorization, since this information do not constitute PHI anymore.

However, according to the Australian [National Health and Medical Research Council][NHMRC] using  the term "non-identifiable" is preferable to avoid the ambiguity inherent in other terms. The removal of identifiers from data is described in [Iain 2010][Ian]. These recommendations include the consent for publication of "anonymized" individual patients' data. They cite a list of 28 identifiers, based on documentation policy for US and the UK research. This list is divided also in _direct_ and _indirect identifiers_. An example of indirect identifiers whose removal is advocated:  
1. Local de tratamento e/ou profissional responsável pelo tratamento.  
2. Dados socioeconômicos: ocupação, educação, etc.  
3. Idade ou ano de nascimento (pode permitir a re-identificação em ensaios pequenos de período de estudo curto).  
4. Entre outros.  

This documentation requires publication of raw data to be accompanied of one of the 3 suggested declarations:

>Consent for publication of raw data obtained from study participants  
Consent for publication of raw data not obtained but dataset is fully anonymous in a manner that can easily be verified by any user of the dataset. Publication of the dataset clearly and obviously presents minimal risk to confidentiality of study participants  
Consent for publication of raw data not obtained and dataset could in theory pose a threat to confidentiality.


### Clinical trials ethics:

Although the Brazilian Federal Constitution (Chap. I, art. 5, item XIV) declares that "it is ensured to everyone access to information and protection of the confidentiality of the source when necessary for professional practice", Brazilian law is still unclear on the rights to free information consultation on clinical research. The [10603 act][10603] from 2002, for example, protects information obtained through clinical research to drug development by companies, in order to prevent "unfair commercial use". The importance of privacy and confidentiality of people in contact with health systems is an old concern, from the Hippocratic times, and defended with a _prima facie_ obligation to professionals and institutions by various legal codes ([Francisconi 1998][costa]) . Thus, the disclosure of information in health care, including clinical research, remains a trade-of between the constitutional right of citizens to access information and the rights of patients and health businesses. It is important in this context to define which information should be protected. According to the [Information and Communications Security Policy of the Ministry of Health (Posit)] [Posit], 'sensitive data' are:

> (...) dados pessoais que permitam a identificação da pessoa e possam ser associados a outros dados referentes ao endereço, idade, raça, opiniões políticas e religiosas, crenças, ideologia, saúde física, saúde mental, vida sexual, registros policiais, assuntos familiares, profissão e outros que a lei assim o definir, não podendo ser divulgados ou utilizados para finalidade distinta da que motivou a estruturação do banco de dados, salvo por ordem judicial ou com anuência expressa do titular ou de seu representante legal

A anuência expressa é denominada "consentimento informado" e, a seu respeito, o [Documento das Américas][america], um conjunto de recomendações de boas práticas para pesquisa clínica elaborado pela Organização Panamericana de Saúde em 2005, declara que:

> A privacidade dos registros que identificam o sujeito permanecerá inviolada e, à medida que as leis aplicáveis e/ou os regulamentos permitirem, os registros não serão divulgados ao público. Se os resultados do estudo forem publicados, a identidade do sujeito permanecerá confidencial;

According to [Resolution CNS N° 466 from 2012][res466], item III.2.i, research should

> (...) “prever procedimentos que assegurem a confidencialidade e a privacidade, a proteção da imagem e a não estigmatização dos participantes da pesquisa, garantindo a não utilização das informações em prejuízo das pessoas e/ou das comunidades, inclusive em termos de autoestima, de prestígio e/ou de aspectos econômico-financeiros”.

The same legal piece, on item IV.3.e, defines that the informed consent form should include a

> “garantia de manutenção do sigilo e da privacidade dos participantes da pesquisa durante todas as fases da pesquisa”.

And it declares that researchers must:

> obter consentimento livre e esclarecido do participante da pesquisa e/ou seu representante legal, inclusive nos casos das pesquisas que, por sua natureza, impliquem justificadamente, em consentimento _a posteriori_;   
> utilizar o material e os dados obtidos na pesquisa exclusivamente para a finalidade prevista no seu protocolo, ou conforme o consentimento do participante;

That said, it appears that, in our country, the current regulations mandates informed consent of the patient or his legal representative even in retrospective studies involving data collection from medical records and documents (secondary data) as well as when publishing primary data (raw data). This brings us closer to the UK and Commonwealth law (as in Australia) than to the US model. Even though there isn't in Brazil a detailed regulation on how to proceed to de-identify  data, there is a diffuse regulation to protect the confidentiality of patients in various legislations. Unfortunately, what data is considered confidential and may never be released and which one could be published in a limited way is undefined in Brazil. This is still the decision of the investigator or coordinator of each study.

### Identifiers in clinical trial databanks

All information on patients participating in a clinical study are taken originally from the patients themselves, their families or through patient documentation (medical records). This information is always identified by default. When they are analyzed, they usually are "stripped" from identifiers and are evaluated by a statistician to ensure that no information about the patients is retained. Likewise, when a data meta-analysis of individual patients is performed, the researchers responsible for reviewing the data de-identify it. Recently, many scientific journals ask the authors of manuscripts submitted for publication the individual patient data in tabular form (raw data). Usually in the form of attachments or additional data to the article. So sharing patient information at the individual level is not a novelty, nor should it be so difficult. However, care should be taken not to provide clues that might lead to any observer to identify patients.

Two types of identifiers can be extracted from the meta-data and data of a clinical study. _Primary identifiers_ permit discrimination between patients without the need for other data. This is the case of the medical record registration number in the service unit and the name (or part thereof) of the patient. For example, if I share the initials or last name, or a combination thereof, for example, _J.J.Abrams_, it becomes easy to identify the patient without knowing your full name. How many different _J.J.Abrams_ could be recruited for a particular clinical trial?
_Secondary identifiers_ permit discrimination between patients associated with other information. This is the case of geographic data. Let's say that the data of a patient show that he came from _Monte Nebo_. However, the number of inhabitants in the same place in a given study can be very limited and this information, combined with, e.g., age and sex, could allow its possible identification.

### Making clinical trials more transparent

If virtually **all** the primary and secondary identifiers are extracted from a database, its analysis may be compromised significantly. Some identifiers need to be kept because they are of clinical interest. In this case, they should be published separately without ordinal correspondence with each other, or just their summary (mean, median, standard deviation, 95% confidence intervals) shoould be disclosed. This is what happens sometimes. Thus, the transparency of a clinical research can rarely be complete, with 100% primary data public and fully disclosed analysis, ideally in real time. The commitment to transparency of the results and the protection of confidentiality of patients must come to a reasonable agreement.

Mesmo assim, ainda existe a possibilidade de melhorar enormemente o modo como os estudos clínicos são divulgados. Atualmente, os ensaios clínicos, em sua maioria, ficam em "caixas pretas", sem nenhuma divulgação de seu desenho experimental, seu problema clínico de partida, do processo de seleção dos pacientes envolvidos nele e, muito menos, das análises realizadas ao longo de seu desenrolar ([Lehman & Loder, 2012][lehman]). Apenas o resultado final, na forma de uma publicação científica é mostrado. Via de regra, sem nenhuma menção aos dados individuais de pacientes. O número de trabalhos clínicos que publicam de forma menos "opaca" é tão pequeno que chega a ser irrisório, e não tem impacto na pesquisa clínica como um todo. Pior ainda, o número de estudos que são realizados mas seus dados nunca são publicados em nenhum formato, pois os resultados não são o que se esperava ou apenas são negativos parece ser significativo ([Ross,2012][ross]). Existe uma enorme demanda reprimida por maior transparência tanto para especialistas quanto para o público nessa área.

Um rápido guia do que poderia ser publicizado sem prejuízo da confidencialidade dos pacientes:

1. **Problema clínico de partida**: a motivação para o estudo. Muitas vezes esta informação é simplesmente omitida, mesmo na publicação dos resultados finais de um ensaio clínico, quando deveria ser fundamental que tal informação viesse a público ainda na fase de projeto.
2. **Desenho experimental**: é fundamental demonstrar que um projeto pode responder a pergunta que se faz no seu início. O desenho experimental, embora fundamental para se compreender as virtudes e as fraquezas de um projeto, é solenemente ignorado tanto por observadores quanto pelos patrocinadores de um estudo. O mecanismo interno dos ensaios, a razão porque eles podem nos dar informações confiáveis, normalmente são alvo apenas de arcanas e obscuras discussões de estatística. Deveria ser objeto de publicidade ativa desde o início do projeto, para especialistas e leigos.
3. **População alvo e processo de recrutamento**: em geral, o item mais bem publicizado dos ensaios, pois depende disso que o projeto decole. Uma perspectiva dada pelo desenho experimental, raramente explicado de forma transparente, seria o ideal.
4. **Intervenções**: de forma clara e pública, com possíveis efeitos adversos e as medidas tomadas para mitigação destes eventos indesejados.
5. **Dados de pacientes individuais _desidentificados_**, sem informação nem mesmo sobre sua ordem de entrada do estudo, o que forçaria a divulgação apenas após o recrutamento, idealmente. Num estudo multicêntrico, haveria a possibilidade da divulgação incremental, em lotes, sem prejuízo da confidencialidade dos pacientes, desde que seu centro de tratamento não fosse divulgado ao mesmo tempo.
6. **Análises estatísticas e suas interpretações**: idealmente, nesta fase, os dados deveriam vir a público, na forma de preprint ou auto-publicação, permitindo a análise crítica por parte da comunidade científica. Caso os resultados fossem negativos, isso ficaria imediatamente patente e seria divulgado.

Estas medidas tornariam o processo dos ensaios clínicos sem problemas ou falhas? Claro que essa é uma visão ingênua. No entanto, poderiam diminuir muito as incertezas quanto às informações clínicas, além de reduzir os custos com pesquisas redundantes e coibir os abusos e as fraudes.

### Referências:

- [Garfinkel, SL. De-identification of personal information, NISTIR 8053][nistir]
- [ISO/TS 25237:2008 Health informatics -- PseudonymizationI][iso]
- [HIPAA Privacy Rule, What Are the Purpose and Background of the Privacy Rule?][hipaa]
- [HHS.gov, Guidance Regarding Methods for De-identification of Protected Health Information in Accordance with the Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule][safeharbor]
- [National Statement on Ethical Conduct in Human Research][NHMRC]
- [Iain Hrynaszkiewicz, Melissa L Norton, Andrew J Vickers, Douglas G Altman, 'Preparing raw clinical data for publication: guidance for journal editors, authors, and peer reviewers', British Medical Journal, 29 January 2010][ian]
- [Lei 10603, de 17 de dezembro de 2002][10603]
- [Francisconi, CF & Gondim, JR. Aspectos bioéticos da confidencialidade e privacidade, _in_ Iniciação à Bioética, 1998][costa]
- [Portaria 3207 de 20 de outubro de 2010. Institui a _POSIC_][posic]
- [Boas Práticas Clínicas: Documento das Américas, 2005][america]
- [RESOLUÇÃO Nº 466, DE 12 DE DEZEMBRO DE 2012][res466]
- [Lehman R, Loder E. Missing clinical trial data. BMJ. 2012;344:d8158][lehman]
- [Ross JS, Tse T, Zarin DA, Xu H, Zhou L, Krumholz HM. Publication of NIH funded trials registered in ClinicalTrials.gov: cross sectional analysis. BMJ. 2012;344:d7292][ross]

[hipaa]: https://privacyruleandresearch.nih.gov/pr_04.asp
[safeharbor]: http://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html#safeharborguidance
[nistir]: http://dx.doi.org/10.6028/NIST.IR.8053
[iso]: http://www.iso.org/iso/catalogue_detail?csnumber=42807
[res466]: http://bvsms.saude.gov.br/bvs/saudelegis/cns/2013/res0466_12_12_2012.html
[NHMRC]: http://www.nhmrc.gov.au/guidelines/publications/e72
[ian]: http://dx.doi10.1136/bmj.c181
[costa]: http://www.portalmedico.org.br/biblioteca_virtual/bioetica/indice.htm
[10603]: http://www.planalto.gov.br/ccivil_03/leis/2002/L10603.htm
[posic]: http://bvsms.saude.gov.br/bvs/saudelegis/gm/2010/prt3207_20_10_2010.html
[america]: http://www.anvisa.gov.br/medicamentos/pesquisa/boaspraticas_americas.pdf
[ross]:  http://dx.doi.org/10.1136/bmj.d7292
[lehman]: http://dx.doi.org/10.1136/bmj.d8158
