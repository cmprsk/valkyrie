---
layout: post
comments: true
title:  "Análise das imagens"
date:   2016-06-03 16:03:45 -0300
categories: valquiria
ref: images
lang: pt
permalink: /analise-imagens/
doi: 10.6084/m9.figshare.3489932.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, magnetic resonance imaging
---
### Revisão central das imagens

As imagens médicas costumam ser fornecidas em formato digital, através de CD ou DVD gravado pela clínica de radiologia que realiza os exames. Essas imagens são armazenadas num formato padronizado, denominado [DICOM][dicom] (*Digital Imaging and Communications in Medicine*). A disponibilidade das imagens em formato digital permite seu manuseio e compartilhamento com maior flexibilidade. No nosso ensaio, idealizamos utilizar a revisão das imagens digitalmente, de forma **anonimizada**, ou **desidentificada**, ou seja, sem nenhuma informação que possa identificar de forma direta ou indireta os pacientes. Para este fim, utilizaremos o serviço do compartilhamento de imagens médicas [DICOM Library][dicom-library]. Este serviço, criado pela empresa Softneta, com financiamento da União Européia, recebe arquivos DICOM, tornando-os anônimos automaticamente e permite seu compartilhamento, sem identificação de pacientes, profissionais ou serviços de saúde.

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

{% include medream-example.html %}

---

### Referências:

- [DICOM][dicom]
- [DICOM Library][dicom-library]


[dicom]: https://pt.wikipedia.org/wiki/DICOM
[dicom-library]: http://www.dicomlibrary.com
