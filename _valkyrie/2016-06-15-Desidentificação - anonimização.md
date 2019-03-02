---
layout: post
comments: true
title:  "Desidentificação - anonimização"
date:   2016-06-15 16:03:45 -0300
categories: metodologia
ref: anonymize
lang: pt
permalink: /desidentificação/
doi: 10.6084/m9.figshare.3545471.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, de-identification
---

### Desidentificação, anonimização, pseudo-anonimização, re-identificação

A documentação do National Institute of Standards and Technology (NIST) americano informa que a nomenclatura utilizada nesta área ainda contem ambiguidades. Os termos (em inglês) _de-identification_, _anonymization_ e _pseudoanonymization_ são usados por vezes como sinônimos, por vezes como variações de processos semelhantes. Para diminuir a ambiguidade, o NIST usa as definições da [ISO/TS 25237:2008][iso]:

> de-identification: “general term for any process of removing the association between a set of identifying data and the data subject.” [p. 3]  
anonymization: “process that removes the association between the identifying dataset and the data subject.” [p. 2]  
pseudonymization: “particular type of anonymization that both removes the association with a data subject and adds an association between a particular set of characteristics relating to the data subject and one or more pseudonyms.”1 [p. 5]

Estes termos não são muito encontrados na literatura em português brasileiro, sendo mais próprios do âmbito do direito e da tecnologia da informação. Sua utilização no universo da pesquisa clínica adota conceituações diversas das de outras áreas. Nos EUA, a [HIPAA (Health Insurance Portability and Accountability Act)][hipaa], legislação específica sobre a proteção da identidade e informações pessoais na área da saúde, estabelece padrões para a proteção das informações individuais (_protected health information - PHI_) dos pacientes pelas empresas prestadoras de serviços de saúde e na pesquisa clínica.

De acordo com a HIPAA, uma entidade de pesquisa pode disponibilizar (tornar público) as PHI de pacientes, desde que os seguintes requisitos sejam obedecidos:  
1. Autorização pelo indivíduo de acordo com a lei em vigor.  
2. Documentação adequada de um comitê de ética em pesquisa institucional ou equivalente, ou ainda uma declaração de dispensa ética por motivo legalmente estabelecido.  
3. Uso ou publicação de PHI em anteprojetos, revisões, relatórios, publicações acadêmicas, etc, desde que sob a responsabilidade dos pesquisadores e obedecendo à lei em vigor.  
4. Disponibilização de um conjunto de dados limitado, sob um termo de uso de informações que deve ser celebrado com os usuários ou audiência do trabalho.  
5. Uso ou publicação da informação de forma _desidentificada_, neste caso não configurando mais uso de PHI.

Ainda de acordo com a HIPAA, as formas de desidentificar as PHI envolvem o método de "repositório seguro" ([_safe-harbor_][safeharbor]), no qual um conjunto pré-definido de identificadores é removido das PHI, ou ainda o tratamento estatístico por profissional experiente a fim de reduzir a um mínimo aceitável o risco de que um observador possa chegar à identidade dos pacientes através das informações (_re-identificação_). Os identificadores a serem removidos pelo método de "repositório seguro" incluem:  
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

A HIPAA ainda exige uma declaração da entidade de saúde ou de pesquisa de que desconhece quaisquer métodos que possam usar combinações dos dados remanescentes para identificar os indivíduos. No entanto,  a HIPAA explicitamente indica que o uso de dados corretamente desidentificados prescinde de autorização, uma vez que estes dados não constituem mais PHI.

Já de acordo com o [National Health and Medical Research Council][NHMRC] australiano, o uso do termo (em inglês) "non-identifiable" é preferível, a fim de evitar a ambiguidade inerente aos outros termos. As técnicas de remoção de identificadores lá seguidas são descritas em [Iain, 2010][ian]. Estas recomendações incluem a autorização específica para publicação de dados "anonimizados" de pacientes individuais. Iain e cols. citam uma lista de 28 identificadores, baseada na política de documentação para pesquisa dos EUA e do Reino Unido. Essa lista é subdividida, ainda, em _identificadores diretos_ e _identificadores indiretos_. Um exemplo de identificadores indiretos cuja remoção é advogada:  
1. Local de tratamento e/ou profissional responsável pelo tratamento.  
2. Dados socioeconômicos: ocupação, educação, etc.  
3. Idade ou ano de nascimento (pode permitir a re-identificação em ensaios pequenos de período de estudo curto).  
4. Respostas transcritas _ad verbum_.  

Este documento ainda sugere que a publicação dos dados em forma "bruta", ou não analisados (raw data), seja acomapanhada de uma das três declarações a seguir:

>Consent for publication of raw data obtained from study participants  
Consent for publication of raw data not obtained but dataset is fully anonymous in a manner that can easily be verified by any user of the dataset. Publication of the dataset clearly and obviously presents minimal risk to confidentiality of study participants  
Consent for publication of raw data not obtained and dataset could in theory pose a threat to confidentiality.


### Ética de ensaios clínicos

Apesar da Constituição Federal Brasileira (Cap. I, art. 5o, item XIV) declarar que "é assegurado a todos o acesso à informação e resguardado o sigilo da fonte, quando necessário ao exercício profissional", a lei brasileira ainda não é clara sobre o direito à livre consulta de informações sobre pesquisa clínica. A [lei 10603][10603], de 2002, por exemplo, protege informações obtidas por meio de pesquisa clínica para o desenvolvimento de medicamentos por empresas, com o fim de evitar "uso comercial desleal". A importância da privacidade e da confidencialidade de pessoas em contato com sistemas de saúde é uma preocupação antiga, desde os tempos hipocráticos, e defendida com uma obrigação _prima facie_ de profissionais e instituições por vários códigos legais ([Francisconi, 1998][costa]). Dessa forma, a divulgação de informações na área da saúde, incluindo na pesquisa clínica, permanece um acordo tácito entre o direito constitucional do cidadão ao acesso à informação e os direitos dos pacientes e agentes da saúde. Torna-se importante, neste contexto, definir qual informação deve ser protegida. De acordo com a [Política de Segurança da Informação e Comunicações do Ministério da Saúde (POSIC)][posic], 'dados confidenciais' são:

> (...) dados pessoais que permitam a identificação da pessoa e possam ser associados a outros dados referentes ao endereço, idade, raça, opiniões políticas e religiosas, crenças, ideologia, saúde física, saúde mental, vida sexual, registros policiais, assuntos familiares, profissão e outros que a lei assim o definir, não podendo ser divulgados ou utilizados para finalidade distinta da que motivou a estruturação do banco de dados, salvo por ordem judicial ou com anuência expressa do titular ou de seu representante legal

A anuência expressa é denominada "consentimento informado" e, a seu respeito, o [Documento das Américas][america], um conjunto de recomendações de boas práticas para pesquisa clínica elaborado pela Organização Panamericana de Saúde em 2005, declara que:

> A privacidade dos registros que identificam o sujeito permanecerá inviolada e, à medida que as leis aplicáveis e/ou os regulamentos permitirem, os registros não serão divulgados ao público. Se os resultados do estudo forem publicados, a identidade do sujeito permanecerá confidencial;

De acordo com a [Resolução CNS N° 466 de 2012][res466], item III.2.i, as pesquisas devem

> (...) “prever procedimentos que assegurem a confidencialidade e a privacidade, a proteção da imagem e a não estigmatização dos participantes da pesquisa, garantindo a não utilização das informações em prejuízo das pessoas e/ou das comunidades, inclusive em termos de autoestima, de prestígio e/ou de aspectos econômico-financeiros”.

A mesma Resolução, no item IV.3.e, ainda define que o Termo de Consentimento Livre e Esclarecido (TCLE) deve conter a

> “garantia de manutenção do sigilo e da privacidade dos participantes da pesquisa durante todas as fases da pesquisa”.

Ainda sobre o TCLE, a mesma norma expõe que a eticidade da pesquisa implica em:

> obter consentimento livre e esclarecido do participante da pesquisa e/ou seu representante legal, inclusive nos casos das pesquisas que, por sua natureza, impliquem justificadamente, em consentimento _a posteriori_;   
> utilizar o material e os dados obtidos na pesquisa exclusivamente para a finalidade prevista no seu protocolo, ou conforme o consentimento do participante;

Dito isto, depreende-se que, em nosso país, a norma vigente torna obrigatório o consentimento informado do paciente ou seu representante legal mesmo em estudos retrospectivos que envolvam a coleta de dados em prontuários e documentos (dados secundários) e não a pesquisa de dados face ao paciente em si (dados primários). Esta situação nos aproxima mais dos países do Reinuo Unido e _Commonwealth_ (caso da Austrália) do que dos EUA. Embora não exista, no Brasil, uma lei ou norma detalhada sobre como proceder à desidentificação dos dados, existe a injunção difusa de proteger a confidencialidade dos pacientes em várias legislações. Infelizmente, quais dados são considerados sigilosos e não podem ser nunca divulgados e quais aqueles que poderiam ser publicados numa forma limitada. Tal conceituação ainda fica a critério do pesquisador ou coordenador de cada estudo.

### Identificadores em bancos de dados de estudos clínicos

Todas as informações sobre pacientes que participam de algum estudo clínico são colhidas originalmente junto aos próprios pacientes, a seus familiares ou através da documentação de atendimento do paciente (prontuário). Essas informações são sempre identificadas por padrão. Quando são analisadas, normalmente "perdem" os identificadores e são avaliados por um estatístico sem informações sobre quem são os pacientes. Igualmente, quando uma meta-análise de dados de pacientes individuais é realizada, os pesquisadores responsáveis pela revisão dos dados os recebem de forma "desidentificada". Hoje em dia, também, várias publicações científicas pedem aos autores de manuscritos submetidos para publicação os dados individuais dos pacientes, de forma tabulada. Normalmente, na forma de anexos ou dados complementares ao artigo. Assim, compartilhar informações de pacientes a nível individual não é uma coisa nova, nem tão difícil. Porém, cuidados devem ser tomados para não fornecer pistas que possam levar a algum observador a identificar os pacientes.

Dois tipos de identificadores podem ser extraídos dos meta-dados e dos dados de um estudo clínico. _Identificadores primários_ permitem a discriminação entre os pacientes sem necessitar de outros dados. É o caso, por exemplo, do número de registro do prontuário na unidade de atendimento e do nome (ou parte dele) do paciente. Por exemplo, se eu compartilho as iniciais ou o sobrenome, ou uma combinação deles, por exemplo, _J.J.Abrams_, torna-se fácil identificar o paciente mesmo sem saber seu nome completo. Quantos _J.J.Abrams_ diferentes poderiam ser recrutados para o mesmo estudo clínico?
_Identificadores secundários_ permitem a discriminação entre os pacientes se associados a outras informações. É o caso, por exemplo, da _procedência_. Digamos que os dados de um paciente mostrem que ele veio do distrito de _Monte Nebo_. Ora, o número de habitantes do mesmo lugar num determinado estudo pode ser bem limitado e essa informação, aliada à, por exemplo, a idade e o sexo, poderiam permitir sua identificação provável.

### Tornando os estudos clínicos mais transparentes

No entanto, se absolutamente **todos** os identificadores primários e secundários forem extraídos de um banco de dados, sua análise pode ser comprometida de forma importante. Alguns identificadores precisam ser mantidos por serem de interesse clínico. Nesse caso, ou eles seriam publicados separadamente, sem correspondência ordinal entre si, ou apenas suas medidas de tendência central (média, mediana) e de dispersão (desvio padrão, IC95%) seriam divulgadas. É o que ocorre algumas vezes. Dessa forma, a transparência de uma pesquisa clínica raramente pode ser completa, com dados primários 100% públicos e análises totalmente divulgadas, idealmente em tempo real. O compromisso com a transparência dos resultados e a proteção à confidencialidade dos pacientes precisa chegar a um meio-termo razoável.

Mesmo assim, ainda existe a possibilidade de melhorar enormemente o modo como os estudos clínicos são divulgados. Atualmente, os ensaios clínicos, em sua maioria, ficam em "caixas pretas", sem nenhuma divulgação de seu desenho experimental, seu problema clínico de partida, do processo de seleção dos pacientes envolvidos nele e, muito menos, das análises realizadas ao longo de seu desenrolar ([Lehman & Loder, 2012][lehman]). Apenas o resultado final, na forma de uma publicação científica é mostrado. Via de regra, sem nenhuma menção aos dados individuais de pacientes. O número de trabalhos clínicos que publicam de forma menos "opaca" é tão pequeno que chega a ser irrisório, e não tem impacto na pesquisa clínica como um todo. Pior ainda, o número de estudos que são realizados mas seus dados nunca são publicados em nenhum formato, pois os resultados não são o que se esperava ou apenas são negativos parece ser significativo ([Ross,2012][ross]). Existe uma enorme demanda reprimida por maior transparência tanto para especialistas quanto para o público nessa área.

Um rápido guia do que poderia ser publicizado sem prejuízo da confidencialidade dos pacientes:

1. **Problema clínico de partida**: a motivação para o estudo. Muitas vezes esta informação é simplesmente omitida, mesmo na publicação dos resultados finais de um ensaio clínico, quando deveria ser fundamental que tal informação viesse a público ainda na fase de projeto.
2. **Desenho experimental**: é fundamental demonstrar que um projeto pode responder a pergunta que se faz no seu início. O desenho experimental, embora fundamental para se compreender as virtudes e as fraquezas de um projeto, é solenemente ignorado tanto por observadores quanto pelos patrocinadores de um estudo. O mecanismo interno dos ensaios, a razão porque eles podem nos dar informações confiáveis, normalmente são alvo apenas de arcanas e obscuras discussões de estatística. Deveria ser objeto de publicidade ativa desde o início do projeto, para especialistas e leigos, a fim de evitar gasto desnecessário de recursos e experimentação antiética com os pacientes.
3. **População alvo e processo de recrutamento**: em geral, o item mais bem publicizado dos ensaios, pois depende disso que o projeto decole. Uma perspectiva dada pelo desenho experimental, raramente explicado de forma transparente, seria o ideal.
4. **Intervenções**: de forma clara e pública, com possíveis efeitos adversos e as medidas tomadas para mitigação destes eventos indesejados.
5. **Dados de pacientes individuais _desidentificados_**, sem informação nem mesmo sobre sua ordem de entrada do estudo, o que forçaria a divulgação apenas após o recrutamento, idealmente. Num estudo multicêntrico, haveria a possibilidade da divulgação incremental, em lotes, sem prejuízo da confidencialidade dos pacientes, desde que seu centro de tratamento não fosse divulgado ao mesmo tempo.
6. **Análises estatísticas e suas interpretações**: idealmente, nesta fase, os dados deveriam vir a público, na forma de preprint ou auto-publicação, permitindo a análise crítica por parte da comunidade científica. Caso os resultados fossem negativos, isso ficaria imediatamente patente e seria divulgado. As análises devem ser divulgadas de forma completamente reprodutível.

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
[ian]: http://dx.doi.org/10.1136/bmj.c181
[costa]: http://www.portalmedico.org.br/biblioteca_virtual/bioetica/indice.htm
[10603]: http://www.planalto.gov.br/ccivil_03/leis/2002/L10603.htm
[posic]: http://bvsms.saude.gov.br/bvs/saudelegis/gm/2010/prt3207_20_10_2010.html
[america]: http://www.anvisa.gov.br/medicamentos/pesquisa/boaspraticas_americas.pdf
[ross]:  http://dx.doi.org/10.1136/bmj.d7292
[lehman]: http://dx.doi.org/10.1136/bmj.d8158
