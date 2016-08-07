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

### De-identification, anonymization, pseudoanonymization, re-identification

National Institute of Standards and Technology (NIST) documentation declares that the use of these terms is still unclear. Words _de-identification_, _anonymization_ and _pseudoanonymization_ are sometimes interchangeable, sometimes carrying subtle different meanings. To mitigate ambiguity, NIST use definitions from [ISO/TS 25237:2008][iso]:

> de-identification: “general term for any process of removing the association between a set of identifying data and the data subject.” [p. 3]  
anonymization: “process that removes the association between the identifying dataset and the data subject.” [p. 2]  
pseudonymization: “particular type of anonymization that both removes the association with a data subject and adds an association between a particular set of characteristics relating to the data subject and one or more pseudonyms.”1 [p. 5]

Brazilian portuguese literature largely lacks this terminology, and they are more often used in law or information technology. The utilization of these concepts in health care and research has a specific conceptualization. [HIPAA (Health Insurance Portability and Accountability Act)][hipaa], US regulation of health data privacy protection, establishes standards for patient personal information  (_protected health information - PHI_) handling by health care providers (covered entities).

> A covered entity is permitted to use or disclose PHI for research purposes if it:
1. Obtains the individual's Authorization for the research use or disclosure of PHI as specified under section 164.508 of the Privacy Rule,
2. Obtains satisfactory documentation of an Institutional Review Board (IRB) or Privacy Board's waiver of the Authorization requirement that satisfies section 164.512(i) of the Privacy Rule,
3. Obtains satisfactory documentation of an IRB or Privacy Board's alteration of the Authorization requirement as well as the altered Authorization from the individual,
4. Uses or discloses PHI for reviews preparatory to research with representations from the researcher that satisfy section 164.512(i)(1)(ii) of the Privacy Rule,
5. Uses or discloses PHI for research solely on decedents' PHI with representations from the researcher that satisfy section 164.512(i)(1)(iii) of the Privacy Rule,
6. Provides a limited data set and enters into a data use agreement with the recipient as specified under section 164.514(e) of the Privacy Rule,
7. Uses or discloses information that is de-identified in accordance with the standards set by the Privacy Rule at section 164.514(a)-(c) (in which case, the health information is no longer PHI), or

According to HIPAA, de-identifying PHI involve the method of "[safe harbor][safeharbor]", where a pre-defined set of identifiers is removed from the PHI, or statistical modifications by experienced professionals in order to reduce to an acceptable level the risk that a third party can identify patients through remaining information (_re-identification_).

>In §164.514(b), the Safe Harbor method for de-identification is defined as follows:
(2)(i) The following identifiers of the individual or of relatives, employers, or household members of the individual, are removed:
(A) Names
(B) All geographic subdivisions smaller than a state, including street address, city, county, precinct, ZIP code, and their equivalent geocodes, except for the initial three digits of the ZIP code if, according to the current publicly available data from the Bureau of the Census:
(1) The geographic unit formed by combining all ZIP codes with the same three initial digits contains more than 20,000 people; and
(2) The initial three digits of a ZIP code for all such geographic units containing 20,000 or fewer people is changed to 000
(C) All elements of dates (except year) for dates that are directly related to an individual, including birth date, admission date, discharge date, death date, and all ages over 89 and all elements of dates (including year) indicative of such age, except that such ages and elements may be aggregated into a single category of age 90 or older
(D) Telephone numbers
(L) Vehicle identifiers and serial numbers, including license plate numbers
(E) Fax numbers
(M) Device identifiers and serial numbers
(F) Email addresses
(N) Web Universal Resource Locators (URLs)
(G) Social security numbers
(O) Internet Protocol (IP) addresses
(H) Medical record numbers
(P) Biometric identifiers, including finger and voice prints
(I) Health plan beneficiary numbers
(Q) Full-face photographs and any comparable images
(J) Account numbers
(R) Any other unique identifying number, characteristic, or code, except as permitted by paragraph (c) of this section; and
(K) Certificate/license numbers
(ii) The covered entity does not have actual knowledge that the information could be used alone or in combination with other information to identify an individual who is a subject of the information.  

However, HIPAA explicitly indicates that the use of properly de-identified data do not need authorization, since this information do not constitute PHI anymore.

According to the Australian [National Health and Medical Research Council][NHMRC] using  the term "non-identifiable" is preferable to avoid the ambiguity inherent in other terms. The removal of identifiers from data is described in [Iain 2010][Ian]. These recommendations include the consent for publication of "anonymized" individual patients' data. They cite a list of 28 identifiers, based on documentation policy for US and the UK research. This list is divided also in _direct_ and _indirect identifiers_. An example of select indirect identifiers whose removal is advocated:  
1. Place of treatment or health professional responsible for care.  
2. Socioeconomic data, such as occupation or place of work, income, or education.  
3. Year of birth or age. Age is potentially identifying if the recruitment period is short and is fully described.  
4. Verbatim responses or transcripts.  

This documentation requires publication of raw data to be accompanied of one of the 3 suggested declarations:

>Consent for publication of raw data obtained from study participants  
Consent for publication of raw data not obtained but dataset is fully anonymous in a manner that can easily be verified by any user of the dataset. Publication of the dataset clearly and obviously presents minimal risk to confidentiality of study participants  
Consent for publication of raw data not obtained and dataset could in theory pose a threat to confidentiality.


### Clinical trials ethics:

Although the Brazilian Federal Constitution (Chap. I, art. 5, item XIV) declares that "it is ensured to everyone access to information and protection of the confidentiality of the source when necessary for professional practice", Brazilian law is still unclear on the rights to free information consultation on clinical research. The [10603 act][10603] from 2002, for example, protects information obtained through clinical research to drug development by companies, in order to prevent "unfair commercial use". The importance of privacy and confidentiality of people in contact with health systems is an old concern, from the Hippocratic times, and defended with a _prima facie_ obligation to professionals and institutions by various legal codes ([Francisconi 1998][costa]) . Thus, the disclosure of information in health care, including clinical research, remains a trade-of between the constitutional right of citizens to access information and the rights of patients and health businesses. It is important in this context to define which information should be protected. According to the [Information and Communications Security Policy of the Ministry of Health (POSIC)][posic], 'sensitive data' are:

> (...) data that permit identification of a person solely or associated to other information concerning address, age, race, political and religious opinions, beliefs, ideology, physical and mental health, sexual life, police records, familly affairs, job, and any other one defined by law, and cannot be released or used for any purpose other than the databank project initial statement, except to obey court orders or upon authorization by the patient or his/her legal representatives [translated from portuguese]

Authorization is also termed signed consent, and the [Document of the Americas][america], a clinical research good practices manual written in 2005 by Pan American Health Organization, states:

> The confidentiality of the records identifying the subject will remain inviolate and, insofar as the applicable laws and/or regulations permit, they will not be made public. If the results of the study are published, the subject's identity will remain confidential;

According to [Resolution CNS N° 466 from 2012][res466], item III.2.i, research should

> (...) plan ahead procedures to protect confidentiality, privacy, protection of self-image and prevention of stigmatization of research participants, ensuring that the information will not be used against persons' or communities' interests, including self-esteem, prestige, and financial aspects. [translated from portuguese]

The same legal piece, on item IV.3.e, defines that the informed consent form should include a

> guarantee of secrecy and privacy of research participants during all phases of the study. [translated from portuguese]

And it declares that researchers must:

> obtain free informed consent from the research participants or their legal representatives, even in such cases that, by their nature, imply justifiably in _a posteriori_ consent;   
> use material and data obtained from research only for the purpose stated in research protocol, or as declared in the informed consent; [translated from portuguese]

That said, it appears that, in our country, the current regulations mandates informed consent of the patient or his legal representative even in retrospective studies involving data collection from medical records and documents (secondary data) as well as when publishing primary data (raw data). This brings us closer to the UK and Commonwealth law (as in Australia) than to the US model. Even though there isn't in Brazil a detailed regulation on how to proceed to de-identify  data, there is a diffuse regulation to protect the confidentiality of patients in various legislations. Unfortunately, what data is considered confidential and may never be released and which one could be published in a limited way is undefined in Brazil. This is still the decision of the investigator or coordinator of each study.

### Identifiers in clinical trial data banks

All information on patients participating in a clinical study are taken originally from the patients themselves, their families or through patient documentation (medical records). This information is always identified by default. When they are analyzed, they usually are "stripped" from identifiers and are evaluated by a statistician to ensure that no information about the patients is retained. Likewise, when a data meta-analysis of individual patients is performed, the researchers responsible for reviewing the data de-identify it. Recently, many scientific journals ask the authors of manuscripts submitted for publication the individual patient data in tabular form (raw data). Usually in the form of attachments or additional data to the article. So sharing patient information at the individual level is not a novelty, nor should it be so difficult. However, care should be taken not to provide clues that might lead to any observer to identify patients.

Two types of identifiers can be extracted from the meta-data and data of a clinical study. _Primary identifiers_ permit discrimination between patients without the need for other data. This is the case of the medical record registration number in the service unit and the name (or part thereof) of the patient. For example, if I share the initials or last name, or a combination thereof, for example, _J.J.Abrams_, it becomes easy to identify the patient without knowing your full name. How many different _J.J.Abrams_ could be recruited for a particular clinical trial?
_Secondary identifiers_ permit discrimination between patients associated with other information. This is the case of geographic data. Let's say that the data of a patient show that he came from _Monte Nebo_. However, the number of inhabitants in the same place in a given study can be very limited and this information, combined with, e.g., age and sex, could allow its possible identification.

### Making clinical trials more transparent

If virtually **all** the primary and secondary identifiers are extracted from a database, its analysis may be compromised significantly. Some identifiers need to be kept because they are of clinical interest. In this case, they should be published separately without ordinal correspondence with each other, or just their summary (mean, median, standard deviation, 95% confidence intervals) should be disclosed. This is what happens sometimes. Thus, the transparency of a clinical research can rarely be complete, with 100% primary data public and fully disclosed analysis, ideally in real time. The commitment to transparency of the results and the protection of confidentiality of patients must come to a reasonable agreement.

Still, it is possible to greatly improve the way clinical trials are disclosed. Currently, most clinical trials' data are in "black boxes" without any disclosure of their experimental design, their hypothesis, eligibility criteria and, let alone, the statistical analyses ([Lehman & Loder, 2012][Lehman]). Only the final results are published. As a rule, no mention of individual patient data is ever made. The number of clinical studies that publish less "opaque" data is so small as to be negligible, and has no impact on clinical research as a whole. Worse still, the number of studies that are carried out and whose results are never published in any form, because those results are not what were expected or are only negative seems to be significant ([Ross, 2012][Ross]). There is a huge unmet demand for greater transparency for both experts and the public in this area.

A brief set of suggestions of what could be published without harm to patients' confidentiality:

1. **Hypothesis**: the initial motivation for a clinical study. Sometimes this information is just lacking, even in the final publication. It should be publicized at the study initial stage of planning.
2. **Experimental design**: it is fundamental to show that the experimental protocol is capable of testing and refuting the hypothesis. Experimental design, although paramount to understand virtues and weaknesses of a project, is usually solemnly ignored by reviewers as well as by study sponsors. Internal mechanics of clinical trials are normally subject to obscure, arcane statistical discussions. It should be publicly discussed from the beginning to avoid duplicated or futile usage of research resources and guard patients from unethicall experimentation.
3. **Eligibility criteria and enrolling process**: most publicized aspect of clinical trials. Experimental design should be fully disclosed together it.
4. **Interventions**: shall be clearly and publicly stated, including possible or expected adverse events, and safety measures undertaken to prevent them.
5. **De-identification of patient individual data**, ideally without information about entry order, so to avoid any means of re-identification. In multicentric studies, incremental lot disclosing of information could be compatible with privacy protection, since the patient's treatment center was not identified altogether.
6. **Statistical analyses and interpretations**: better time to publicly disclose the raw data results, as a preprint or self-publication that permits critical appraisal by scientific community. If the results are negative this would be made immediately public. The statistical analyses should be made available in a fully reproducible way.

Only such measures could make the clinical trials fail-proof? Of course this is naive. However, this could reduce uncertainty about clinical information and additionally diminish costly redudancies and curb misconduct and fraud.

### References:

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
[america]: http://apps.who.int/medicinedocs/documents/s22153en/s22153en.pdf
[ross]:  http://dx.doi.org/10.1136/bmj.d7292
[lehman]: http://dx.doi.org/10.1136/bmj.d8158
