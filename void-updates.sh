#!/usr/bin/env bash

# Verificar atualizações disponíveis no Void Linux
UPDATES=$(xbps-install -un | wc -l)

# Selecionar ícone com base no número de atualizações
if [ "$UPDATES" -eq 0 ]; then
    ICON="" # Ícone Nerd Font para "sistema atualizado" (checkmark)
else
    ICON="󰚰" # Ícone Nerd Font para "atualizações disponíveis" (package box)
fi

# Saída para o Genmon
echo "<txt><span font='Hack Nerd Font'>$ICON $UPDATES</span></txt>"
echo "<tool>Updates available: $UPDATES</tool>"
echo "<click>xfce4-terminal -e 'sudo xbps-install -Suv'</click>"
