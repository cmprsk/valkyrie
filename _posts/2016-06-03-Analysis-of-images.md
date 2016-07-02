---
layout: post
comments: true
title:  "Analysis of images"
date:   2016-06-03 16:03:45 -0300
categories: valquiria
ref: images
lang: en
---
### Central Reviewing images

Medical images are usually provided in digital format through CD or DVD recorded by the radiology clinic. These images are stored in a standard format, called [DICOM][dicom] (*Digital Imaging and Communications in Medicine*). The availability of images in digital format allows handling and sharing with greater flexibility. In our trial, we are performing the review of images digitally acquired (when available) in **anonymised**  form, ie, without any information that can directly or indirectly identify patients. To do this, we will use the medical image sharing service [DICOM Library][dicom-library]. This service, created by Softneta with funding from the European Union, retrieves DICOM files, anonymizing them automatically in the browser side before uploading and allows one to share medical images without identification of patients, professionals and health services.

I pitched in today with Dr. Sandra Albuquerque to review the process of sending the images to the DICOM Library server. Below, a tutorial video:

<iframe width = "560" height = "315" src = "https://www.youtube.com/embed/1QjBC4k86oQ?rel=0" frameborder = "0" allowFullScreen> </iframe>

The admission of patients for the trial will follow these steps:

* Candidate patient selection (children and adolescents up to 18 years with a diffuse brainstem tumor).
* Submission of the digital images to the DICOM Library server, anonymised, generating a permanent link.
* Contact me for private link submission.
* Analysis of the images anonymously through the DICOM Library viewer to ascertain the diagnosis of diffuse intrinsic pontine glioma (DIPG).
* Communicating the result of the image review to Dr. Sandra Albuquerque.
* If the diagnosis is confirmed, the patient's referred to the oncology unit to start treatment after consent.

Example examination stored in DICOM library which can be analyzed online:

{% include medream-example.html %}

#### Criteria for diagnosis of diffuse intrinsic pontine gliomas:

Although there are no diagnostic criteria defined in the literature, we use a definition similar to that found in the HIT-GBM-D trial protocol:

> Diffuse intrinsic pontine glioma:
  center: pons, T1 tumor: hypointense, T2: hyperintense, CT: mostly
  hypodense, When Compared to regular pontine tissue. Diffuse tumor with margins
  and extension to more than half of the brainstem cross diameter. The regular
  pontine tissue might either Been missing in the level of the maximal tumor
  extension or might Have Been reduced to a small kidney, but is not simply
  dislocated by a single solid tumor nodule (...). This group has a tumor
  clinical history of less than 6 month. The diagnoses can be made
  radiologically without histological verification.

Tumor __centered in pons__, hypointense on T1, hyperintense on T2, hypodense on CT, __diffuse__ (no well delimited borders), extension to __more than half of the pons (brainstem) cross diameter__. The magnetic resonance imaging (MRI) study depicted below illustrates a case of a patient admitted to our hospital service diagnosed with DIPG. Note the T1 and T2-weighted sequences: one can observe an infiltrating lesion "inflating" the entire cross length of the pons, with iso-hypointensity in T1, little or no contrast enhancement and signal hiperintensity in T2/FLAIR, without clear demarcation of borders.

{% include medream-dipg.html %}

A study published by [Hankinson _et al_][hankinson] investigated the reproducibility of DIPG diagnostic accuracy by magnetic resonance images evaluated by experienced neurosurgeons. The authors concluded that there was inconsistency in the diagnosis and management of the cases evaluated. A representative picture of the different patterns of DIPG found was published:

![hankinsonetal](http://thejns.org/na101/home/literatum/publisher/jns/journals/content/ped.1/2011/ped.1.2011.8.issue-1/2011.4.peds1180/production/images/large/0080097f1.jpeg)
*Representative images of typical case (A), intermediary (B) and atypical (C). Images are protected by [copyright][jns-permission] and should not be copied or reproduced.*

 The diagnostic criteria suggested in this work are:
 > 1. an intrinsic, central location involving more than 50% of the axial diameter of the pons;
   2. indistinct tumor margins;
   3. T1 hypointensity;
   4. T2 hyperintensity;
   5. irregular, if any, enhancement following gadolinium administration; and
   6. the absence of cystic or exophytic components.
 Encasement of the basilar artery is another frequent, less consistently described characteristic.

---

### References:

- [DICOM][dicom]
- [DICOM Library][dicom-library]
- [Hankinson TC, _et al_. Interpretation of magnetic
resonance images in diffuse intrinsic pontine glioma: a survey of pediatric
neurosurgeons. J Neurosurg Pediatr. 2011;8:97-102. ][hankinson]
- [Journal of Neurosurgery: request of permissions][jns-permission]


[dicom]: https://pt.wikipedia.org/wiki/DICOM
[dicom-library]: http://www.dicomlibrary.com
[hankinson]: http://thejns.org/doi/full/10.3171/2011.4.PEDS1180
[jns-permission]: https://thejns.org/action/permissions
