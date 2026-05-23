# Clint Crocker | Portfolio Site

A high-prestige, content-first portfolio site designed for a Director of Engineering. The visual identity is built around a **"late-night engineering notebook"** aesthetic, emphasizing operational maturity, calm technical authority, and systems craftsmanship.

---

## Technical Stack

* **Frontend:** Plain HTML5, Tailwind CSS (loaded via CDN with custom play extensions), and vanilla JavaScript.
* **Fonts:** `Inter` (sans-serif) for high-legibility layout and `JetBrains Mono` for operational specs, status indicators, and tech labels.
* **Hosting:** Served via Nginx on Alpine Linux within a Docker container.

---

## Setup & Local Development

To run the site locally, build and launch the Docker container:

```bash
docker compose up --build -d
```

Once started, the site will be accessible in your browser at:
* **[http://localhost:8081](http://localhost:8081)**

### File Structure
* `/src/index.html` — Main landing page and visual container.
* `/public/` — Shared asset directory containing project images, the workspace backdrop (`hero.webp`), and `resume.pdf`.
* `Dockerfile` & `nginx.conf` — Nginx routing and staging configurations.

---

## License & Reuse

Copyright © 2026 Clint Crocker

The source for this site is publicly visible for educational and reference purposes.

Please do not reuse the branding, written content, design identity, or represent derivative works as affiliated with Clint Crocker.
