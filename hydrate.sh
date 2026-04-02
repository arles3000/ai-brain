#!/bin/bash
# Script de Hidratación de Reglas - arles3000/ai-brain

BRAIN_DIR=$(pwd)
DEST_DIR=$1

if [ -z "$DEST_DIR" ]; then
    echo "Uso: ./hydrate.sh /ruta/al/proyecto"
    exit 1
fi

# Crear enlaces simbólicos para que los cambios en el cerebro se reflejen en todo
ln -sf "$BRAIN_DIR/global/architecture-hexagonal.md" "$DEST_DIR/.ai-architecture.md"
ln -sf "$BRAIN_DIR/global/solid-principles.md" "$DEST_DIR/.ai-solid.md"

# Copiar plantilla de agente (modificable por proyecto)
cp "$BRAIN_DIR/templates/agent.md" "$DEST_DIR/agent.md"

echo "✅ Proyecto hidratado con éxito en $DEST_DIR"