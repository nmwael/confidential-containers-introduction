---
title: Unlocking Confidential Computing~ An Introduction to Confidential Containers in Kubernetes
theme: gaia
class:
- invert
paginate: true
size: 16:9
author: Nino Martinez Wael
transition: fade
marp: true
---

## <!--fit--> Unlocking Confidential Computing~ An Introduction to Confidential Containers in Kubernetes
_For your eyes only_

<!-- _footer: Author: Nino Martinez Wael -->
<!-- _paginate: false -->

---

## Take aways, what will you get from this

1. Understand the fundamentals of confidential computing and why it’s essential for securing sensitive workloads in cloud-native environments.
2. Learn how Confidential Containers integrate with Kubernetes to provide hardware-backed isolation and attestation without disrupting existing workflows.
3. Discover practical use cases and next steps for adopting CoCo in real-world scenarios, from AI/ML to regulated industries.

---

### Introduction

<!-- 5 min introduction of this talk -->

---

## Welcome & agenda

Why confidentiality matters in cloud-native

---

### Confidential Computing Basics

- Vision of confidential computing?
- TEEs and hardware technologies (Intel TDX, AMD SEV-SNP, IBM Secure Execution)

![bg right](media/attestation.svg)

<!-- 10 min -->

---

#### <!--fit-->Vision of confidential computing

1) _Secure Data-in-Use_
2) _Enable Trusted Collaboration_
3) _Drive Universal Adoption_

<!--
10 min
1. _Secure Data-in-Use_: Secure Data-in-Use represents a transformative approach to data protection, ensuring that sensitive information remains encrypted and isolated even while being processed, by leveraging hardware-based Trusted Execution Environments (TEEs) that create secure enclaves resistant to unauthorized access, thereby mitigating risks of insider threats, cloud vulnerabilities, and advanced cyberattacks, while enabling organizations to confidently run workloads in shared or untrusted infrastructures without compromising privacy, integrity, or compliance, ultimately fostering trust, accelerating innovation, and empowering secure collaboration across industries such as finance, healthcare, and government, where confidentiality is paramount for regulatory adherence and competitive advantage in an increasingly interconnected digital ecosystem 
2. _Enable Trusted Collaboration_: Enable Trusted Collaboration envisions a secure ecosystem where organizations, partners, and even competitors can share and process sensitive data without exposing intellectual property or violating privacy, by leveraging confidential computing technologies such as secure enclaves, remote attestation, and cryptographic isolation, ensuring that workloads remain protected even in multi-party or untrusted environments, thereby unlocking new opportunities for joint innovation in areas like federated learning, AI model training, and cross-industry analytics, while maintaining compliance with stringent regulations, reducing risk, and fostering trust as a core principle for digital transformation in sectors where collaboration is essential yet confidentiality cannot be compromised.
3. _Drive Universal Adoption_: Drive Universal Adoption focuses on establishing confidential computing as a foundational security layer across cloud, edge, and on-premises environments, through the development of open standards, interoperability frameworks, and robust compliance models that enable seamless integration for enterprises of all sizes, while promoting industry-wide collaboration via consortia and partnerships with hardware vendors, cloud providers, and regulators, ensuring that secure data-in-use becomes a default expectation rather than an exception, ultimately creating a global trust fabric that accelerates innovation, supports privacy-preserving AI, and empowers organizations to confidently embrace digital transformation without sacrificing security, performance, or regulatory adherence in an interconnected world.
-->

---

### Confidential Containers Overview

1) _Confidential Containers (CoCo) mission statement_
2) _Architecture & trust model_
3) _Integration with Kata Containers_

<!--  15 min

1. _Confidential Containers (CoCo) mission statement_: Allow cloud native application owners to enforce application security requirements
Transparent deployment of unmodified containers
Support for multiple TEE and hardware platforms
A trust model which separates Cloud Service Providers (CSPs) from guest applications
Least privilege principles for the Kubernetes Cluster administration capabilities which impact delivering Confidential Computing for guest application or data inside the TEE.
2. _Architecture & trust model_:

 -->

---

### Key Features & Workflow

- Trustee, rego policies for
  - Resource access
  - Passing attestation
  - find more
- Pod-centric design
- Hyperscaler CoCo peerpods Flavors (azure,aws,gcp,ibmcloud,alibabacloud)
- Attestation process
- Developer experience
<!-- 10 min -->

---

### Use Cases & Ecosystem

AI/ML workloads
Multi-tenant environments
Regulated industries
<!-- 10 min -->

---

### Roadmap & How to Get Started

Community resources
Future developments
<!-- 10 min -->

---

## Q&A (5 min)
