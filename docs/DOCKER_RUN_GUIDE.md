# Docker Run Guide

This repo is Docker-runnable out of the box.

## Option 1: Docker CLI (recommended)

From the repo root:

```bash
docker build -t revenue-leak-detector .
docker run --rm -p 8501:8501 revenue-leak-detector
```

Open: [http://localhost:8501](http://localhost:8501)

What happens on startup:
1. The container runs `python -m src.run_pipeline`.
2. Processed files are generated in `data/processed/` and model artifacts in `artifacts/`.
3. Streamlit launches on port `8501`.

## Option 2: Docker Compose

```bash
docker compose up --build
```

Open: [http://localhost:8501](http://localhost:8501)

## Useful commands

Run only the pipeline:

```bash
docker run --rm revenue-leak-detector pipeline
```

Skip pipeline and launch Streamlit directly (uses existing processed files in image):

```bash
docker run --rm -p 8501:8501 -e RUN_PIPELINE_ON_START=false revenue-leak-detector
```

Open shell in container:

```bash
docker run --rm -it revenue-leak-detector bash
```

## Copy-the-repo-and-run workflow

If someone copies/clones this repository to any machine with Docker installed:

```bash
cd Revenue-Leak-Detector
docker build -t revenue-leak-detector .
docker run --rm -p 8501:8501 revenue-leak-detector
```

No local Python setup is required.
