---
layout: post
comments: true
title:  "Análise das imagens"
date:   2016-06-03 16:03:45 -0300
categories: valquiria
---
### Revisão central das imagens

As imagens médicas costumam ser fornecidas em formato digital, através de CD ou DVD gravado pela clínica de radiologia que realiza os exames. Essas imagens são armazenadas num formato padronizado, denominado [DICOM](https://pt.wikipedia.org/wiki/DICOM) (*Digital Imaging and Communications in Medicine*). A disponibilidade das imagens em formato digital permite seu manuseio e compartilhamento com maior flexibilidade. No nosso ensaio, idealizamos utilizar a revisão das imagens digitalmente, de forma **anonimizada**, ou **desidentificada**, ou seja, sem nenhuma informação que possa identificar de forma direta ou indireta os pacientes. Para este fim, utilizaremos o serviço do compartilhamento de imagens médicas [DICOM Library](http://www.dicomlibrary.com). Este serviço, criado pela empresa Softneta, com financiamento da União Européia, recebe arquivos DICOM, tornando-os anônimos automaticamente e permite seu compartilhamento, sem identificação de pacientes, profissionais ou serviços de saúde.

Repassei hoje com a Dra Sandra Albuquerque o processo de envio das imagens para o servidor do DICOM Library. Abaixo, um vídeo explicativo (em inglês):

<iframe width="560" height="315" src="https://www.youtube.com/embed/1QjBC4k86oQ?rel=0" frameborder="0" allowfullscreen></iframe>

A admissão dos pacientes para o ensaio se dará seguindo estes passos:

* Seleção do paciente candidato (criança ou adolescente com até 18 anos, portador de tumor de tronco cerebral difuso).
* Envio das imagens digitais para o servidor DICOM Library, anonimizadas, com geração de um link permanente.
* Contato privado comigo para envio do link.
* Análise das imagens anônimas através do visualizador da DICOM Library, para certificar o diagnóstico de glioma pontino intrínseco difuso (DIPG).
* Comunicação da revisão do diagnóstico para a Dra Sandra Albuquerque.
* Se confirmado o diagnóstico, encaminhamento do paciente para a unidade de Oncologia para iniciar o tratamento, após consentimento.

Exemplo de exame armazenado na DICOM Library, que pode ser analisado online:

{% include medream-dipg %}

#### Critérios para diagnóstico dos gliomas pontinos intrínsecos difusos:

Embora não existam critérios diagnósticos definidos na literatura, nós utilizamos uma definição semelhante àquela encontrada no protocolo do ensaio clínico HIT-GBM-D:

> diffuse intrinsic pontine glioma:  
  center: pons, tumor T1: hypointense, T2: hyperintense, CT: mostly
  hypodense, when compared to normal pontine tissue. Diffuse tumor with margins
  and extension to more than half of the brainstem cross diameter. The normal
  pontine tissue might either been missing in the level of the maximal tumor
  extension or might have been reduced to a small rim, but is not simply
  dislocated by a single solid tumor nodule (...). This tumor group has a
  clinical history of less than 6 month. The diagnoses can be made
  radiologically without histological verification.

Ou seja, tumor __centrado na ponte__, hipointenso em T1, hiperintenso em T2, hipodenso em TC, __difuso__ (sem bordas nítidas), extensão para __mais que metade do diâmetro do tronco cerebral__. O estudo de ressonância magnética (RM) abaixo ilustra um caso de paciente atendido em nosso serviço hospitalar, com diagnóstico de DIPG. Observando as sequências ponderadas em T1, T2 e FLAIR, pode-se observar uma lesão infiltrando e "insuflando" toda a extensão da ponte, com iso-hipointensidade em T1, pouca ou nenhuma captação de contraste e alteração de sinal em T2/FLAIR, sem demarcação nítida de bordas.

{% include medream-dipg %}

Um estudo publicado por [Hankinson _et al_](http://thejns.org/doi/full/10.3171/2011.4.PEDS1180) no Journal of Neurosurgery avaliou a reproducibilidade da avaliação por imagem de ressonância magnética, realizada por neurocirurgiões experientes, do diagnóstico de DIPG. Os autores mostraram inconsistência no diagnóstico e conduta dos casos avaliados. Uma imagem representativa dos diferentes padrões encontrados foi publicada:

![hankinsonetal](http://thejns.org/na101/home/literatum/publisher/jns/journals/content/ped.1/2011/ped.1.2011.8.issue-1/2011.4.peds1180/production/images/large/0080097f1.jpeg)
*Imagens representativas de casos típico (A), intermediário (B) e atípico (C). As imagens são protegidas por [direitos autorais](https://thejns.org/action/permissions) e não devem ser copiadas, nem reproduzidas.*

 Os critérios de diagnóstico sugeridos neste trabalho são:
 > 1) an intrinsic, central location involving more than 50% of the axial diameter of the pons;
 2) indistinct tumor margins;
 3) T1 hypointensity;
 4) T2 hyperintensity;
 5) irregular, if any, enhancement following Gd administration; and
 6) the absence of cystic or exophytic components.
 Encasement of the basilar artery is another, less consistently referenced characteristic.

---

``` Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)```
