---
title: Unlocking Confidential Computing: An Introduction to Confidential Containers in Kubernetes
theme: uncover
class:
- invert
paginate: true
size: 16:9
author: Nino Martinez Wael
transition: fade
marp: true
---

<!-- _footer: Author: Nino Martinez Wael -->
<!-- _paginate: false -->

---

As organizations increasingly move sensitive workloads to the cloud, ensuring data confidentiality during execution has become a critical challenge. Confidential Containers (CoCo), a CNCF sandbox project, addresses this by integrating confidential computing principles into the cloud-native ecosystem. Leveraging Trusted Execution Environments (TEEs) and hardware-backed security technologies such as Intel TDX, AMD SEV-SNP, and IBM Secure Execution, CoCo enables Kubernetes users to run containerized applications in isolated, attested environments—without modifying existing workflows.
In this session, we’ll explore:

What is Confidential Computing and why it matters?
The architecture and trust model behind Confidential Containers.
Key features: attestation, pod-centric design, and integration with Kata Containers.
Use cases across regulated industries, AI/ML workloads, and multi-tenant environments.
A look at the ecosystem and roadmap, and how you can get started.

Whether you’re a platform engineer, security architect, or cloud-native enthusiast, this talk will demystify confidential computing and show how CoCo brings stronger guarantees of data confidentiality, integrity, and code integrity to Kubernetes.

---

## Take aways

1. Understand the fundamentals of confidential computing and why it’s essential for securing sensitive workloads in cloud-native environments.
2. Learn how Confidential Containers integrate with Kubernetes to provide hardware-backed isolation and attestation without disrupting existing workflows.
3. Discover practical use cases and next steps for adopting CoCo in real-world scenarios, from AI/ML to regulated industries.

### Introduction (5 min)

---

### Welcome & agenda

Why confidentiality matters in cloud-native

---

### Confidential Computing Basics (10 min)

What is confidential computing?
TEEs and hardware technologies (Intel TDX, AMD SEV-SNP, IBM Secure Execution)

---

### Confidential Containers Overview (15 min)

CNCF project background
Architecture & trust model
Integration with Kata Containers

---

### Key Features & Workflow (10 min)

Pod-centric design
Attestation process
Developer experience

---

### Use Cases & Ecosystem (10 min)

AI/ML workloads
Multi-tenant environments
Regulated industries

---

### Roadmap & How to Get Started (5 min)

Community resources
Future developments

---

### Q&A (5 min)
