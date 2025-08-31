#!/usr/bin/env sh
set -e
: "${OLLAMA_PREPULL:=llama3}"

for m in $OLLAMA_PREPULL; do
  echo "Pulling $m ..."
  ollama pull "$m"
done

exec ollama serve --host 0.0.0.0 --port "$PORT"
