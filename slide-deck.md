---
title: Unlocking Confidential Computing ~ An Introduction to Confidential Containers in Kubernetes
theme: gaia
class:
- invert
paginate: true
size: 16:9
author: Nino Martinez Wael / linkedin.com/in/ninomartinez/
transition: fade
marp: true
footer: 'Nino Martinez Wael / nmwael.github.io'
---

# <!--fit--> Unlocking Confidential Computing ~ An Introduction to Confidential Containers in Kubernetes

_For your eyes only, or is it_

---

## Key take aways

1) Understand the fundamentals of confidential computing.
1) How CNCF Confidential Containers (**CoCo**) integrate with Kubernetes.
1) Next steps for adopting CoCo.

<!--
time 00:01:00 

Understand the fundamentals of confidential computing and why it’s essential for securing sensitive workloads in cloud-native or on-prem environments.
Learn how Confidential Containers integrate with Kubernetes to provide hardware-backed isolation and attestation without disrupting existing workflows.
Next steps for adopting CoCo.

-->

---

## <!--fit--> Sneak peak of whats needed for workload to run with hardware confidentiality

_Kubernetes snippet_

```yaml
...
annotations:
    io.katacontainers.config.runtime.cc_init_data: "BASE64 AAXXYY"
...  
```
<!--
time 00:02:00 

For deployments utilizing CoCo above is all that is needed.
-->

---

## Introduction

1) I'm Nino Martinez Wael, from Denmark, Frederikssund
1) I've been a professional from 2002, contributing to opensource projects from 2006
1) I work as a Chief Architect at TDC Erhverv
1) Joined the CNCF confidential containers as contributor in august 2025, working with Confidential compute since 2022
1) I'm primarily a Java developer, doing RUST for low level implementations

<!--
time 00:04:00  introduction of this talk

Let's start by presenting myself
* I'm Nino Martinez Wael
* I'm from Denmark, Frederikssund
* I work as a Chief Architect at TDC Erhverv Data Security & Data Privacy
* I've joined the confidential container project as contributor in august 2025 and have been working with Confidential compute since 2022 
* I've been a professional since 2002, and contributing to opensource projects since 2006.
-->

---

## Agenda

1) _Scope of talk_
1) _Confidential Computing Basics_
1) _CNCF Confidential Containers Overview_
1) _Q&A_

<!-- 
time 00:06:00
Im honored to be able to speak to you guys on this complex topic.
This talk wil on a introduction level.
We will go through Confidential Computing Basics to get an idea of what this area covers before diving into what CNCF Confidential Containers has to offer. If theres this for it we can take questions per topic, otherwise questions will be at the end. The talk will take around 45 minutes  

 -->

---

## Confidential Computing Basics

1) _Secure Data-in-Use_
1) _Enable Trusted Collaboration_
1) _Drive Universal Adoption_

<!--
time 00:08:00

1. _Secure Data-in-Use_: Secure Data-in-Use represents a transformative approach to data protection, ensuring that sensitive information remains encrypted and isolated while being processed in memory and on cpu, by leveraging hardware-based Trusted Execution Environments (TEEs) that create secure enclaves that are locked down. Intel, AMD, ARM, Nvidia and even some ESP's are examples of platforms that can support this.

2. _Enable Trusted Collaboration_: Enable Trusted Collaboration by providing verifiable evidence for a TEE (application) instance. This is also called a quote, a quote consists of Platform Configuration Register measurements (PCR) which essentially are HASH'es of information like cpu id's etc. So validating a quote consisting of PCR measurements for a TEE on a 3rd party level is called Remote attestation procedure or RATS. 

3. _Drive Universal Adoption_: Early attempts on creating TEE's were quite invasive and often required either reconfiguration of the runtime or complete re-implementation, TEE's of this kind were process based. A more adoption friendly approach are making the TEE vm based, it has a MUCH MUCH larger tcb (Trusted Compute base) but are far easier to use. 
-->

---

## <!--fit--> Confidential Computing Basics - Attestation

1) _What is attestation_

1) _Attestation in practice_ ![fit 33%](media/attestation.svg)
<!--
time 00:12:00
Talk on attestation / RATS
Explain what attestation means eg verify, stamp of approval

Attestation (in layman’s terms)

Attestation is a way to prove that a computer is running the right software, in a safe environment, and hasn’t been tampered with — before you trust it.

How this maps to confidential computing 🔐

In confidential computing:

Your data is encrypted while it’s being used, not just stored or sent

The code runs inside a protected area called a Trusted Execution Environment (TEE)

But before you send sensitive data or encryption keys into that protected area, you want proof that:

The TEE is genuine (not fake)

The correct hardware is being used

The expected code is running

Nothing has been altered or compromised

👉 That proof is called an attestation - No trust required upfront — it’s verified trust.


-->
---

## Confidential Containers Overview

1) _CNCF Confidential Containers (CoCo) mission statement_
1) _Architecture & attestation measurements_ ![fit](media/teevmmeasurement.svg)
<!-- _footer: "" -->
<!--  
time 00:18:00

1. _Confidential Containers (CoCo) mission statement_: The overarching goal of CoCo is ambitious yet clear: standardize confidential computing at the container level and simplify its integration into Kubernetes.
 - Transparent deployment of unmodified containers
 - Support for multiple TEE and hardware platforms (including nvidia)
A trust model which separates Cloud Service Providers (CSPs) from guest applications
Least privilege principles for the Kubernetes Cluster administration capabilities which impact delivering Confidential Computing for guest application or data inside the TEE.
2. _Architecture_:
Built with OSS components such as Kata Containers, LibVirt with a modular approach so components can be reused across Cloud Service Providers. Custom built vm's for Cloud Service Providers.
 -->
---

## Key Features CoCo TEE (Pod creation)

1) Cloud native mindset
1) CoCo configuration defined via kubernetes annotations
1) Pod-centric design via lightweight Kata Container vm's inside the TEE
1) Cloud Service Provider CoCo peerpod Flavors (Azure, AWS, GCP, IBMcloud, Alibaba Cloud...)
1) OCI image signature verification / multi key encryption support
1) Attestation process
1) In TEE endpoints for attestation or secured resources

<!-- 
time 00:25:00

Just use your deployments as you usually do.

Confidential computing projects are largely defined by what is inside the enclave and what is not. For Confidential Containers, the enclave contains the workload pod and helper processes and daemons that facilitate the workload pod. Everything else, including the hypervisor, other pods, and the control plane, is outside of the enclave and untrusted. This division is carefully considered to balance TCB size and sharing.

Manages pod life cycle from creation of a complete VM to destruction.

Cloud Service Provider CoCo peerpod Flavors = Cloud Api adaptor
Bare metal flavor for on-prem.

It's first after a successful attestation that workload begins to start.

Supports a debugging provider to test or develop with.

-->
---

## Activate CoCo

```yaml
annotations:
    io.katacontainers.config.runtime.cc_init_data: "BASE64 AAXXYY"
```
<!-- 
time 00:26:00

simple as that:)
-->
---

## InitData CoCo, source of truth

1) Configuration of Attestation provider
1) [Attestation agent config](https://github.com/confidential-containers/guest-components/blob/main/attestation-agent/attestation-agent/config.example.toml)
1) [Kata containers policy](https://github.com/kata-containers/kata-containers/blob/dacb14619d9a4e1927ba64be09b89773c5d54d5e/src/tools/genpolicy/genpolicy-auto-generated-policy-details.md)
1) [OCI Image policy](https://github.com/confidential-containers/guest-components/blob/main/confidential-data-hub/example.config.toml#L105) [spec](https://github.com/containers/image/blob/main/docs/containers-policy.json.5.md)
1) [OCI Registry Auth credentials](https://github.com/confidential-containers/guest-components/blob/main/confidential-data-hub/example.config.toml#L121) [spec](https://github.com/confidential-containers/guest-components/blob/main/image-rs/docs/ccv1_image_security_design.md#policy)
1) [OCI Registry Configuration policy](https://github.com/confidential-containers/guest-components/blob/54b9a5b4e5a323c3d099940ba0f9a062b5722e42/image-rs/docs/ccv1_image_security_design.md#policy) [spec](https://github.com/confidential-containers/guest-components/blob/main/image-rs/docs/registry_configuration.md)
1) [Additional credentials pulled from Trustee](https://github.com/confidential-containers/guest-components/blob/main/confidential-data-hub/example.config.toml#L58-L60)
1) Much more

<!-- 
time 00:32:00

Init data describes:
Who will attest this deployment
Kata containers, Pod access permissions and what can the pod access of hardware amongst other things. Kata GenPolicy tool that will generate the Kata policy from a given deployment .
What are allowed container registries, allowed signatures etc.

-->
---

## CoCo TEE continued

![bg 80%](media/coco-design-diagram.png)

<!-- 
time 00:35:00
Point out that the containers running in the pod TEE share memory unrestricted, mention that Kata containers only permits access to specified devices / along with specified kubernetes capabilities if no exec permit no admin can enter the pod.
Mention guest puller as all non vm specific images are pulled inside TEE.

-->

---

<style scoped>
ul {
  font-size: 0.6em;
}
</style>

## Key Features CoCo Trustee (Attestation)

1. Attestation - Rego policy
1. Resource serving - Rego policy
1. Supports optional plugins
    - HSM
    - KMS Aliyun
    - Vault
    - Nebula CA

<!-- 
time 00:38:00

A Rego policy is a set of rules written in plaintext that tells a system what is allowed and what is not.
“If these conditions are true, then this action is allowed.”

Attestation are handled by a Rego policy, this can be further configured. Current support includes Intel TDX, AMD SEV-SNP, Nvidia Hopper / Blackwell

Resource serving :
-Secure key release flow, 
-Sealed secrets (not bitnami's sealed secret project)

-->

---

## How to Get Started

1) CoCo can be deployed via Helm charts.
1) Guides on official website for the different cloud providers (Azure, GCP, AWS & Bare metal)
1) CoCo Trustee can be deployed as a operator, transitioning towards Helm charts
1) [Openshift](https://www.redhat.com/en/blog/exploring-openshift-confidential-containers-solution)

<!-- 
time 00:40:00

It's quite easy to test, you don't need TEE capable hardware to test it out.

-->

---

## Reference links

![bg right 33%](./media/qrcode_presentation_url.svg)

- [CoCo Web](https://confidentialcontainers.org/)
- [CoCo Slack](https://cloud-native.slack.com/archives/C039JSH0807)
- [KataContainers](https://katacontainers.io/) [GenPolicy](https://github.com/kata-containers/kata-containers/tree/main/src/tools/genpolicy)
- [PCR (measurements) Spec](https://trustedcomputinggroup.org/wp-content/uploads/TCG_PCClient_PFP_r1p05_v22_02dec2020.pdf)
- [LibVirt](https://libvirt.org/)
- Questions -> <nmwa@tdc.dk>

<!-- _footer: Pic: Link to this presentation -->
---

## Q&A
