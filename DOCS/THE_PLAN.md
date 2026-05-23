# Portfolio Site Specification: "Luxury Professional"

## 1. Overview & Architecture
A high-prestige, sophisticated, and highly scannable single-page portfolio designed for a Director of Engineering. It prioritizes quiet confidence, technical authority, and executive-level clarity.
* **Stack**: Plain HTML5/CSS3 with Tailwind CSS, minimal GSAP for smooth micro-interactions.
* **Hosting / Deployment**: `nginx:alpine` Docker container.

## 2. Design System & Aesthetics
The visual language should feel like a premium executive dashboard or a high-end architectural firm—clean, precise, and understated.
* **Layout**: Asymmetrical or balanced grid with sophisticated spacing. Focus on "white space" as a luxury element.
* **Color Palette**: 
  * Background: Midnight Slate (`#0F172A`) or Rich Obsidian (`#020617`)
  * Accents: Burnished Silver (`#94A3B8`) or Deep Gold (`#A85507`) for highlights.
  * Text: Soft White (`#F8FAFC`) and Muted Slate (`#64748B`) for hierarchy.
* **Typography**: 
  * Headers: Sophisticated Serif (e.g., *Playfair Display* or *Lora*) for a "New York Times" executive feel.
  * Body/Technical: Modern, high-legibility Sans-Serif (e.g., *Montserrat* or *Inter*).

## 3. Content Structure & Copy

### 3.1. Hook / Hero Section
* **Headline**: CLINT CROCKER
* **Sub-Headline**: Director of Engineering | Systems Architect
* **Mission Statement**: 30 Years of Scaling High-Performance Infrastructure & AI Ecosystems.
* **Call to Action (Buttons)**: `[View GitHub]` | `[Download Resume]`

### 3.2. The "Porch Talk" Narrative (About)
A 30-year veteran narrative highlighting global stakes, zero downtime, and provable metrics.
* **Key Focuses**: 
  * Reducing AWS costs by 33%.
  * Hardening organizational security to a 9.8/10 score.
  * Serving as the "Bridge" where high-level business strategy meets deep-dive technical execution.

### 3.3. The "GeekSuite" R&D Lab
Highlighting personal R&D environments used to pressure-test architectures at scale:
* **AI Orchestration**: RAG and Vector-based context management for agentic workflows.
* **High-Performance Security**: Custom Rust-based utilities for near-instant encryption at rest (AEAD encryption, Zero-Copy deserialization).
* **Modular Infrastructure**: Containerized, polyglot ecosystem managed via automated pipelines.

### 3.4. Technical Philosophy
* **Zero-Trust by Default**: Security isn't a feature; it's the foundation.
* **Automation-First**: If a human has to do it twice, a script should do it once.
* **Player-Coach Mentality**: Leadership is more effective when the leader understands the metal.

### 3.5. Footer
* **The "30 Years" Stamp**: A distinguishing mark separating veteran experience from standard management. Links to socials/contact.

## 4. Implementation Details (The "Clint" Way)
* Use Tailwind CSS utility classes to achieve the "Pro" look rapidly.
* Ensure the provided Dockerfile utilizes a two-stage build (if compiling Tailwind) or a direct copy of static assets to `nginx:alpine` with a custom `nginx.conf`.
* Double-check that the hosted Resume PDF includes the "30 years" fix and resolves the "$9.8" typo.

## 5. Dockerfile Spec
Drop this into your `GeekSuite/apps/portfolio` directory:
```dockerfile
# Stage 1: Build (Optional if using Tailwind CLI)
FROM alpine:latest as build
RUN apk add --no-cache curl

# Stage 2: Production
FROM nginx:alpine
LABEL maintainer="Clint Crocker <clint@clintgeek.com>"

# Copy your static files
COPY ./src /usr/share/nginx/html

# Custom Nginx config for your subdomain
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```