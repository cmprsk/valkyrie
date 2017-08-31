---
layout: post
comments: true
title:  "Analysis of medical images with an open tool"
date:   2016-06-03 16:03:45 -0300
categories: valquiria
ref: images
lang: en
permalink: /image-analysis/
doi: 10.6084/m9.figshare.3489932
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, magnetic resonance imaging, project valkyrie
---
### Central review of images

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

---

### References:

- [DICOM][dicom]
- [DICOM Library][dicom-library]


[dicom]: https://pt.wikipedia.org/wiki/DICOM
[dicom-library]: http://www.dicomlibrary.com
