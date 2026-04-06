#!/usr/bin/env bash
set -euo pipefail

RUN_PIPELINE_ON_START="${RUN_PIPELINE_ON_START:-true}"
PORT="${PORT:-8501}"

run_pipeline_if_needed() {
  if [[ "${RUN_PIPELINE_ON_START,,}" == "true" ]]; then
    echo "[entrypoint] Running analytics pipeline before starting app..."
    python -m src.run_pipeline
  else
    echo "[entrypoint] Skipping pipeline run (RUN_PIPELINE_ON_START=${RUN_PIPELINE_ON_START})."
  fi
}

case "${1:-streamlit}" in
  streamlit)
    run_pipeline_if_needed
    echo "[entrypoint] Starting Streamlit on 0.0.0.0:${PORT}"
    exec streamlit run app.py \
      --server.address=0.0.0.0 \
      --server.port="${PORT}" \
      --server.headless=true
    ;;
  pipeline)
    exec python -m src.run_pipeline
    ;;
  bash)
    exec bash
    ;;
  *)
    exec "$@"
    ;;
esac
