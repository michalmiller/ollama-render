FROM ollama/ollama

# מושך את המודל llama3
RUN ollama serve & sleep 5 && ollama pull tinyllama

EXPOSE 11434

CMD ["ollama", "serve"]
