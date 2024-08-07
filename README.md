# Oracle AI Invoice Handling

![](img/0-automating-invoice-handling-1024.jpg)

## Files for this solution

The project files for this lab are found in the [`/project` directory](https://github.com/oracle-devrel/oci-ai-invoice-handling/tree/main/project).

## Video

[![Automate Invoice Handling with OCI](http://img.youtube.com/vi/pjdQzFscOrk/0.jpg)](http://www.youtube.com/watch?v=pjdQzFscOrk "Automate Invoice Handling with OCI")

## Introduction

This solution will demonstrate how to automate invoice handling using Oracle AI.


Oracle AI is basically what helps your applications make sense of your data, and apply AI to help you use your data in new ways, whether it’s preparing your data with AI so you can drive better analytics experiences, or using AI on top your data to help make the right decisions and predictions for your business. 

Oracle AI is built on experience with industries. As the world’s leading enterprise applications provider with more than 80 apps ranging from the ERP suite to HCM to vertical offerings like Primavera and Opera, Oracle has gained experience from working with thousands of customers to discover how customers want to use AI to improve their processes and results. The industry experience represented by our apps informs our AI as we integrate it into those apps to benefit users.

You may already be familiar with our machine learning services – they have been around for a few years. The OCI Data Science offering provides a managed E2E environment for building, deploying and managing your machine learning models. Similarly, Oracle Database Machine Learning offers a complete data science environment that is optimized for performance in Autonomous database or data warehouse. 

We've just announced a new service for data labeling, with a simple, consistent experience, making it easier to label your text or images and use those labels to customize your own machine learning models and build shared catalogs. 

## Overview


![](img/1-ai-based-invoice-handling-1024.jpg)

The steps we take in this demo are:

1. Ingestion, whether through email, SFTP, or other means of ingesting invoices
2. Automation, using Oracle Integration and Oracle Process automation, we process the invoices
3. Using OCI Document Understanding and Object Storage, we classify and extract data from the invoices
4. Lastly, we store the results using Autonomous Database

![](img/2-oracle-ai-platform-1024.jpg)

The heart of today's announcement is the the developers' layer—a comprehensive set of pretrained, plug-and-play Oracle AI services. 

![](img/3-oci-document-understanding-1024.jpg)

It provides two main capabilities: 

The first one is for analyzing images – both the "cat vs. dog" examples, but also for detecting objects and bounding boxes inside an image. You can bring your own labeled data, or use our data labeling service to create your own labeled data sets and train custom models. 

The second capability is around Document AI. You can use it to understand documents – whether it’s scanned PDFs, forms, or even images containing textual information. 

**Extract Text**: The service can extract text from images, including non-trivial scenarios like Printed and handwritten text, Tilted shaded or rotated documents.

**Document Classification**: classifies documents into different types based on visual appearance, high-level features, and extracted keywords. 

**Language Detection**: analyzes the visual features of text to determine language - rather than relying on the text itself.

Use table extraction to pull line-item detail from invoices, PO, receipts, and other similar documents, and obtain values for common fields in invoices and receipts using key value extraction

![](img/4-invoice-key-value-extraction-1024.jpg)

![](img/5-oci-integration-2-1024.jpg)
![](img/6-oci-integration-1024.jpg)

## License

Copyright (c) 2024 Oracle and/or its affiliates.

Licensed under the Universal Permissive License (UPL), Version 1.0.

See [LICENSE](LICENSE) for more details.

ORACLE AND ITS AFFILIATES DO NOT PROVIDE ANY WARRANTY WHATSOEVER, EXPRESS OR IMPLIED, FOR ANY SOFTWARE, MATERIAL OR CONTENT OF ANY KIND CONTAINED OR PRODUCED WITHIN THIS REPOSITORY, AND IN PARTICULAR SPECIFICALLY DISCLAIM ANY AND ALL IMPLIED WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.  FURTHERMORE, ORACLE AND ITS AFFILIATES DO NOT REPRESENT THAT ANY CUSTOMARY SECURITY REVIEW HAS BEEN PERFORMED WITH RESPECT TO ANY SOFTWARE, MATERIAL OR CONTENT CONTAINED OR PRODUCED WITHIN THIS REPOSITORY. IN ADDITION, AND WITHOUT LIMITING THE FOREGOING, THIRD PARTIES MAY HAVE POSTED SOFTWARE, MATERIAL OR CONTENT TO THIS REPOSITORY WITHOUT ANY REVIEW. USE AT YOUR OWN RISK. 
