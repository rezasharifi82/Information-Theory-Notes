---
tags:
  - info-theory
  - syllabus
  - index
course: Information Theory & Learning
---

# Information Theory & Learning — Course Syllabus

> **Vault Structure:** All diagrams and downloaded visual assets are stored in `Assets/`. Lesson notes are organized by module and linked below.

---

## Core Reference Textbooks & Online Resources
* **Cover & Thomas:** *Elements of Information Theory* (2nd Ed.) — [Wiley / Official Companion](https://www.wiley.com/en-us/Elements+of+Information+Theory%2C+2nd+Edition-p-9780471241959)
* **David MacKay:** *Information Theory, Inference, and Learning Algorithms* — [Free Full Book PDF & Lectures (Cambridge)](https://www.inference.org.uk/itprnn/book.html)
* **Polyanskiy & Wu:** *Information Theory: From Coding to Learning* — [MIT / Yale Lecture Notes PDF](https://people.lids.mit.edu/yp/homepage/data/itlectures_v5.pdf)

---

## Module 1: Foundations of Information Measures
* **[[01.1 - Self-Information and Shannon Entropy|1.1 Self-Information & Shannon Entropy]]**
  * Axiomatic derivation of information content $I(x) = -\log_2 P(x)$ and Shannon entropy $H(X) = -\sum_{x} p(x)\log p(x)$.
  * Binary entropy function $H_b(p)$ and fundamental bounds $0 \le H(X) \le \log |\mathcal{X}|$.
* **[[01.2 - Joint, Conditional Entropy and Mutual Information|1.2 Joint, Conditional Entropy & Mutual Information]]**
  * Chain rules for entropy: $H(X, Y) = H(X) + H(Y|X)$.
  * Mutual information $I(X; Y) = H(X) - H(X|Y)$ and Venn diagram / I-measure intuition.
* **[[01.3 - KL Divergence and Core Inequalities|1.3 KL Divergence & Core Inequalities]]**
  * Kullback-Leibler divergence $D_{\mathrm{KL}}(P \| Q) = \sum_{x} P(x) \log \frac{P(x)}{Q(x)}$.
  * Gibbs' inequality ($D_{\mathrm{KL}} \ge 0$), Jensen's inequality, log-sum inequality, Data Processing Inequality ($X \to Y \to Z \implies I(X;Z) \le I(X;Y)$), and Fano's inequality.

---

## Module 2: Lossless Data Compression & Source Coding
* **[[02.1 - Prefix Codes and Kraft-McMillan Inequality|2.1 Prefix Codes & Kraft-McMillan Inequality]]**
  * Nonsingular, uniquely decodable, and instantaneous (prefix-free) codes.
  * Binary code trees and the Kraft-McMillan inequality: $\sum_{i} 2^{-\ell_i} \le 1$.
* **[[02.2 - Huffman and Arithmetic Coding|2.2 Huffman & Arithmetic Coding]]**
  * Optimal prefix code construction via greedy merging (Huffman algorithm).
  * Stream coding and arithmetic coding near the entropy limit $H(X) \le L < H(X) + 1$.
* **[[02.3 - AEP and Source Coding Theorem|2.3 AEP & Shannon's Source Coding Theorem]]**
  * Asymptotic Equipartition Property (AEP): $-\frac{1}{n} \log p(X_1, \dots, X_n) \xrightarrow{P} H(X)$.
  * Typical sets $A_\epsilon^{(n)}$ and fundamental limits of lossless compression.

---

## Module 3: Noisy Channels & Channel Capacity
* **[[03.1 - Discrete Memoryless Channels and Capacity|3.1 Discrete Memoryless Channels & Capacity]]**
  * Transition matrices $p(y|x)$: Binary Symmetric Channel (BSC) and Binary Erasure Channel (BEC).
  * Information channel capacity: $C = \max_{p(x)} I(X; Y)$.
* **[[03.2 - Noisy-Channel Coding Theorem|3.2 Shannon's Noisy-Channel Coding Theorem]]**
  * Joint typicality, random coding argument (achievability), and Fano's converse.
  * Reliable communication at any rate $R < C$.
* **[[03.3 - Linear Block Codes and Decoding|3.3 Linear Block Codes & Decoding]]**
  * Generator matrices $G$, parity-check matrices $H$, Hamming distance, and Hamming codes.
  * Maximum Likelihood (ML) vs. Maximum A Posteriori (MAP) decoding.

---

## Module 4: Continuous Variables & Gaussian Channels
* **[[04.1 - Differential Entropy and MaxEnt|4.1 Differential Entropy & Maximum Entropy Distributions]]**
  * Differential entropy $h(X) = -\int f(x) \log f(x)\,dx$, scaling properties $h(aX) = h(X) + \log |a|$, and quantization limits.
  * Maximum Entropy (MaxEnt) principle under moment constraints (Uniform, Exponential, Gaussian).
* **[[04.2 - AWGN Channel Capacity|4.2 AWGN Channel Capacity]]**
  * Additive White Gaussian Noise channel $Y = X + Z$ with power constraint $\mathbb{E}[X^2] \le P$.
  * Shannon-Hartley theorem: $C = \frac{1}{2} \log_2 \left(1 + \frac{P}{N}\right)$ and water-filling over parallel channels.

---

## Module 5: Information Theory in Statistics & Machine Learning
* **[[05.1 - Hypothesis Testing and Stein's Lemma|5.1 Hypothesis Testing & Stein's Lemma]]**
  * Binary hypothesis testing ($H_0: P$ vs. $H_1: Q$), Type I/II error exponents, and Neyman-Pearson lemma.
  * Chernoff-Stein lemma: asymmetric error exponent equals $D_{\mathrm{KL}}(P \| Q)$.
* **[[05.2 - Cross-Entropy Loss, MLE, and KL in Neural Networks|5.2 Cross-Entropy Loss, MLE & KL in Neural Networks]]**
  * Equivalence of Maximum Likelihood Estimation (MLE) and minimizing empirical KL divergence.
  * Cross-entropy $H(p, q) = H(p) + D_{\mathrm{KL}}(p \| q)$ in classification, VAEs (ELBO), and diffusion models.
* **[[05.3 - Generalization Bounds and PAC-Bayes|5.3 Generalization Bounds & PAC-Bayes]]**
  * Information-theoretic generalization error bounds via input-output mutual information $I(S; W)$ (Xu & Raginsky).
  * PAC-Bayesian bounds and KL-regularized empirical risk minimization.

---

## Module 6: Advanced Topics & Modern Applications
* **[[06.1 - Rate-Distortion Theory|6.1 Rate-Distortion Theory]]**
  * Lossy compression with distortion measure $d(x, \hat{x})$.
  * Rate-distortion function $R(D) = \min_{p(\hat{x}|x): \mathbb{E}[d(X,\hat{X})] \le D} I(X; \hat{X})$.
* **[[06.2 - Network Information Theory|6.2 Network Information Theory]]**
  * Multi-user channels: Multiple-Access Channels (MAC) capacity region and Interference Channels.
* **[[06.3 - Information Bottleneck Method|6.3 Information Bottleneck Method]]**
  * Tishby's Information Bottleneck objective: $\min_{p(t|x)} I(X; T) - \beta I(T; Y)$ and representation learning dynamics.