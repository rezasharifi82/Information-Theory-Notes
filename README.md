# Information Theory & Learning Notes 📡

[![Obsidian](https://img.shields.io/badge/Notes-Obsidian-483699?logo=obsidian&logoColor=white)](https://obsidian.md/)
[![LaTeX](https://img.shields.io/badge/Math-LaTeX%20%2F%20MathJax-008080?logo=latex&logoColor=white)](https://www.mathjax.org/)
[![Excalidraw](https://img.shields.io/badge/Diagrams-Excalidraw-orange?logo=excalidraw&logoColor=white)](https://excalidraw.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A rigorous, self-contained set of university lecture notes covering **Classical Information Theory**, **Data Compression**, **Channel Coding**, and modern **Information-Theoretic Machine Learning**. Designed to be studied and navigated inside [Obsidian](https://obsidian.md).

---

## 🗺️ Course Roadmap & Table of Contents

The complete study plan is outlined in [[Syllabus.md|Course Syllabus]].

```
Information Theory & Learning
├── 01 - Foundations
│   ├── 01.1 - Self-Information and Shannon Entropy
│   ├── 01.2 - Joint, Conditional Entropy and Mutual Information
│   └── 01.3 - KL Divergence and Core Inequalities
├── 02 - Source Coding (Lossless Compression)
│   ├── 02.1 - Prefix Codes and Kraft-McMillan Inequality
│   ├── 02.2 - Huffman and Arithmetic Coding
│   └── 02.3 - AEP and Source Coding Theorem
├── 03 - Noisy Channels & Capacity
│   ├── 03.1 - Discrete Memoryless Channels and Capacity
│   ├── 03.2 - Noisy-Channel Coding Theorem
│   └── 03.3 - Linear Block Codes and Decoding
├── 04 - Continuous Variables & Gaussian Channels
│   ├── 04.1 - Differential Entropy and MaxEnt
│   └── 04.2 - AWGN Channel Capacity
├── 05 - Statistical Learning & ML
│   ├── 05.1 - Hypothesis Testing and Stein's Lemma
│   ├── 05.2 - Cross-Entropy Loss, MLE, and KL in Neural Networks
│   └── 05.3 - Generalization Bounds and PAC-Bayes
├── 06 - Advanced Topics
│   ├── 06.1 - Rate-Distortion Theory
│   ├── 06.2 - Network Information Theory
│   └── 06.3 - Information Bottleneck Method
└── Assets
    └── (Excalidraw drawings, diagrams, charts, and media)
```

---

## 📐 Mathematical Notation & Conventions

| Concept | Standard Notation | Definition / Notes | Units |
| :--- | :--- | :--- | :--- |
| **Random Variables** | $X, Y \in \mathcal{X}, \mathcal{Y}$ | Capital roman for variables, script for alphabets | — |
| **Probability Mass Function** | $p(x) = \mathbb{P}(X = x)$ | $\sum_{x \in \mathcal{X}} p(x) = 1, \; p(x) \ge 0$ | — |
| **Self-Information (Surprise)** | $I(x) = \log_2 \frac{1}{p(x)}$ | Information content of event $x$ | bits |
| **Shannon Entropy** | $H(X) = \mathbb{E}[I(X)]$ | $-\sum_{x} p(x) \log_2 p(x)$ | bits (or nats if $\ln$) |
| **Joint Entropy** | $H(X, Y)$ | $-\sum_{x,y} p(x,y) \log_2 p(x,y)$ | bits |
| **Conditional Entropy** | $H(Y \mid X)$ | $\sum_x p(x) H(Y \mid X=x)$ | bits |
| **Mutual Information** | $I(X; Y)$ | $H(X) - H(X \mid Y) = D_{\mathrm{KL}}(p(x,y) \parallel p(x)p(y))$ | bits |
| **KL Divergence** | $D_{\mathrm{KL}}(P \parallel Q)$ | $\sum_{x} P(x) \log_2 \frac{P(x)}{Q(x)}$ | bits |
| **Channel Capacity** | $C = \max_{p(x)} I(X; Y)$ | Maximum rate for asymptotically error-free transmission | bits / channel use |
| **Differential Entropy** | $h(X)$ | $-\int f(x) \log_2 f(x) \, dx$ | bits (can be negative!) |

> [!NOTE] Base of Logarithms
> * $\log_2(\cdot)$ is standard in Information Theory (units in **bits** or **shannons**).
> * $\ln(\cdot)$ or $\log_e(\cdot)$ is used frequently in statistical physics and machine learning (units in **nats**). $1\text{ nat} = \frac{1}{\ln 2} \approx 1.4427\text{ bits}$.

---

## 🎨 Note-Taking Features & Obsidian Setup

This vault is customized for writing high-density STEM notes:

### 1. Mathematical Callout Boxes
Standardized academic blocks styled via `.obsidian/snippets/academic-callouts.css`:

```markdown
> [!definition] Definition 1.1 (Shannon Entropy)
> For a discrete random variable $X \sim p(x)$, the entropy is:
> $$H(X) \triangleq -\sum_{x \in \mathcal{X}} p(x) \log_2 p(x)$$

> [!theorem] Theorem 1.1 (Non-negativity of Entropy)
> For any discrete random variable $X$, $H(X) \ge 0$ with equality iff $X$ is deterministic.

> [!proof]
> Since $0 \le p(x) \le 1$, we have $\log_2 \frac{1}{p(x)} \ge 0$.
> Each term $p(x) \log_2 \frac{1}{p(x)} \ge 0$, therefore their sum $H(X) \ge 0$.

> [!example] Example: Fair Coin vs. Biased Coin
> For a Bernoulli($p$) random variable:
> $$H_b(p) = -p\log_2 p - (1-p)\log_2(1-p)$$
> Maximized at $p = 0.5$ with $H_b(0.5) = 1$ bit.

> [!intuition] Key Intuition
> Entropy measures the expected uncertainty or average surprise before observing the outcome.
```

### 2. LaTeX Suite Snippets (Blazing Fast Math)
The `latex-suite` plugin is enabled. Common shortcuts while typing inside `$...$` or `$$...$$`:
* `mk` $\to$ inline math `$  $`
* `dm` $\to$ display math `$$ \dots $$`
* `1/2` or `a/b` $\to$ `\frac{a}{b}`
* `sr` $\to$ `^2`
* `cb` $\to$ `^3`
* `_` $\to$ `_{}`
* `@a`, `@b`, `@e`, `@m`, `@s` $\to$ `\alpha`, `\beta`, `\epsilon`, `\mu`, `\sigma`
* `sum` $\to$ `\sum_{}^{}`
* `int` $\to$ `\int_{}^{}`

### 3. Excalidraw Visual Diagrams
Interactive hand-drawn vector diagrams are stored in `Assets/`.
* **Embedding in any note:**
  ```markdown
  ![[Shannon-Communication-System.excalidraw]]
  <!-- or with custom width -->
  ![[Shannon-Communication-System.excalidraw|750]]
  ```
* **Editing a drawing:** Double-click or `Ctrl + Click` on any embedded drawing inside Obsidian to open the live vector editor.
* **Math in Excalidraw:** Use `$$` around any formula in Excalidraw text boxes to render LaTeX directly on the canvas!

### 4. Image Pasting & Assets
* Dragging or pasting screenshots (`Ctrl + V`) automatically saves the image files into the [Assets](file:///home/mreza/Documents/Obsidian-Vault/My%20Documents/Information%20Theory/Assets) folder, keeping note folders clean.

---

## 🔄 Syncing with GitHub

### Via Obsidian (GUI)
* **`Ctrl + P`** $\to$ `Git: Backup and sync`
* Or click the Git icon on the left ribbon / status bar.

### Via Command Line
Inside this directory, run:
```bash
./sync.sh "Describe your changes"
```
It pulls remote changes, stages new notes/assets, creates a timestamped commit, and pushes to `origin/main`.

---

## 📚 Primary Textbooks & References

1. **Cover, T. M., & Thomas, J. A.** (2006). *Elements of Information Theory* (2nd ed.). Wiley-Interscience.
2. **MacKay, D. J. C.** (2003). *Information Theory, Inference, and Learning Algorithms*. Cambridge University Press.
3. **Polyanskiy, Y., & Wu, Y.** (2025). *Information Theory: From Coding to Learning*. Cambridge University Press.
4. **Shannon, C. E.** (1948). *A Mathematical Theory of Communication*. Bell System Technical Journal, 27(3), 379–423.
