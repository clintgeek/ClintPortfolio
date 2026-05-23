# PORTFOLIO UI REFINEMENT PLAN: COHESION & PACING PASS

This document outlines the refinements for Clint's portfolio to achieve greater visual cohesion, softer asset integration, and organic scrolling rhythm. We are optimizing for an authentic, lived-in engineering logbook that feels mature, quiet, and operationally disciplined.

---

## 1. Primary Goals & Rationale

1. **Soften Sterility ("Lived-in" Texture):** 
   * **Issue:** Screenshots and project cards currently feel like floating digital SaaS widgets.
   * **Solution:** Mount screenshots inside soft, warm-toned matte containers with subtle borders. This mimics physical screenshots pasted or taped into a laboratory notebook, rather than flat digital blocks.
2. **Decompress the Hero Section:**
   * **Issue:** The hero area density is tight, making it look slightly compressed and eager to prove competence.
   * **Solution:** Increase the vertical spacing and column gaps. Give the header, title, and buttons more room to sit with quiet authority.
3. **Establish scrolling cadence (Organic Pacing):**
   * **Issue:** Uniform `mb-28` spacing between all sections creates a mechanical, repetitive scrolling experience.
   * **Solution:** Group related sections (e.g. philosophy blocks) with tighter margins (`mb-20`), and separate major transitions (e.g. Work -> Philosophy) with larger breathing margins (`mb-36`).

---

## 2. Intended Emotional Outcome

* **Calm technical authority:** The spacing feels spacious and unhurried.
* **Reflective craftsmanship:** The page feels hand-assembled, like a trusted logbook compiled over time, maintaining a high level of professional discipline.

---

## 3. Affected Components (in `src/index.html`)

### A. Hero Section Spacing
* Shift the overall Hero bottom margin to `mb-36`.
* Adjust the column grid gap to `lg:gap-16` to push the text column and the image column apart slightly, letting the page center breathe.
* Increase text layout spacing:
  * Subtitle margins: `mt-8` -> `mt-10`
  * Body paragraph margins: `mt-6` -> `mt-8`
  * CTA margins: `mt-8` -> `mt-10`

### B. Screenshot Integration & Mounting
For the three main projects under **Selected Work** and four projects under **Additional Projects**:
* Wrap the zoomable images in a matted container:
  * Classes: `bg-[#131315]/40 border border-zinc-900/60 p-4 rounded-xl shadow-md shadow-black/10`
  * This creates a soft border-radius card overlay that mounts the screenshot nicely.
* Reduce default image opacity to `opacity-80` to soften contrast, transitioning smoothly to `opacity-95` on hover.

### C. Spacing Cadence Adjustments
Modify vertical margins between sections as follows:
* **Hero -> About:** `mb-36` (visual transition from intro to core perspective)
* **About -> Impact:** `mb-28`
* **Impact -> Selected Work:** `mb-36` (major category transition)
* **Selected Work -> Additional Projects:** `mb-32`
* **Additional Projects -> Leadership:** `mb-36` (major transition to philosophy)
* **Leadership -> How I Work:** `mb-20` (tight grouping of philosophy listings)
* **How I Work -> Technical Core:** `mb-20` (tight grouping)
* **Technical Core -> Footer:** `mb-32`

---

## 4. Verification Plan

1. **Local Build:** Run `docker compose up --build -d` to compile static assets.
2. **Visual Inspection:** Verify spacing, contrast, card soft-edges, and responsive grid flow across mobile, tablet, and desktop breakpoints.
