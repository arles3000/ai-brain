#!/bin/bash
# =================================================================
# Script de Hidratación IA_Bifrost - arles3000/ai-brain
# =================================================================

# Obtener la ruta absoluta de tu Cerebro Central
DIR_CEREBRO="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_DESTINO=$(pwd)

echo "🚀 Iniciando hidratación profesional en: $DIR_DESTINO"

# 1. Vincular Reglas Globales (Fundamentos permanentes) [cite: 465]
ln -sf "$DIR_CEREBRO/global/architecture-hexagonal.md" "$DIR_DESTINO/.ai-arquitectura.md"
ln -sf "$DIR_CEREBRO/global/senior-role.md" "$DIR_DESTINO/.ai-rol.md"
ln -sf "$DIR_CEREBRO/global/solid-principles.md" "$DIR_DESTINO/.ai-solid.md"

# 2. Router de Skills (Carga bajo demanda para evitar Context Bloat) [cite: 687, 771]
if [ -f "package.json" ]; then
    echo "📦 Stack Detectado: React / Web"
    ln -sf "$DIR_CEREBRO/skills/react.md" "$DIR_DESTINO/.ai-skill-stack.md"
elif [ -f "build.gradle" ] || [ -f "build.gradle.kts" ]; then
    echo "🤖 Stack Detectado: Android / Kotlin"
    ln -sf "$DIR_CEREBRO/skills/android-kotlin.md" "$DIR_DESTINO/.ai-skill-stack.md"
elif ls *.csproj >/dev/null 2>&1; then
    echo "💻 Stack Detectado: C# / .NET"
    ln -sf "$DIR_CEREBRO/skills/csharp-dotnet.md" "$DIR_DESTINO/.ai-skill-stack.md"
else
    echo "⚠️ Stack no detectado. Se omitieron las reglas técnicas específicas."
fi

# 3. Instalación de Punteros para IDE (System Prompts Persistentes) [cite: 553, 555]
cp "$DIR_CEREBRO/templates/agent.md" "$DIR_DESTINO/agent.md"
cp "$DIR_CEREBRO/templates/.cursorrules" "$DIR_DESTINO/.cursorrules"

# 4. Prevención de Amnesia (Memoria local del proyecto) [cite: 692, 701]
if [ ! -f "LESSONS.md" ]; then
    echo "# Aprendizajes del Proyecto" > LESSONS.md
    echo "## Formato de Memoria: Qué / Por qué / Dónde / Aprendido [cite: 695]" >> LESSONS.md
fi

echo "✅ Proyecto hidratado con éxito. El agente ahora es un Arquitecto de Orquestación[cite: 782]."