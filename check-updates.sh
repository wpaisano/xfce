#!/bin/bash

# Verifica se há atualizações disponíveis
updates=$(xbps-install -un | wc -l)

# Saída para Genmon
if [[ "$1" == "--genmon" ]]; then
    if [ "$updates" -eq 0 ]; then
        echo "📦 Atualizado"
    else
        echo "📦 $updates updates"
    fi
else
    # Notificação normal
    if [ "$updates" -eq 0 ]; then
        notify-send "Atualizações do Void Linux" "Tudo está atualizado!" --icon=dialog-information
    else
        notify-send "Atualizações do Void Linux" "$updates atualizações disponíveis." --icon=dialog-warning
    fi
fi

