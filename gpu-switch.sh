#!/bin/bash

CONF_DIR="/etc/X11/xorg.conf.d"

case "$1" in
    intel)
        sudo mv "$CONF_DIR/20-nvidia.conf" "$CONF_DIR/20-nvidia.conf.disabled" 2>/dev/null
        sudo mv "$CONF_DIR/10-intel.conf.disabled" "$CONF_DIR/10-intel.conf" 2>/dev/null
        echo "Переключено на Intel. Перезапуск X..."
        sleep 1
        sudo rc-service lightdm restart
        ;;
    nvidia)
        sudo mv "$CONF_DIR/10-intel.conf" "$CONF_DIR/10-intel.conf.disabled" 2>/dev/null
        sudo mv "$CONF_DIR/20-nvidia.conf.disabled" "$CONF_DIR/20-nvidia.conf" 2>/dev/null
        echo "Переключено на NVIDIA. Перезапуск X..."
        sleep 1
        sudo rc-service lightdm restart
        ;;
    status)
        echo "Текущий режим:"
        if [ -f "$CONF_DIR/20-nvidia.conf" ]; then
            echo "  NVIDIA (внешний монитор)"
        elif [ -f "$CONF_DIR/10-intel.conf" ]; then
            echo "  Intel (встроенный экран)"
        else
            echo "  Неизвестно"
        fi
        ;;
    *)
        echo "Использование: gpu-switch [intel|nvidia|status]"
        echo "  intel  - встроенный экран ноутбука"
        echo "  nvidia - внешний монитор"
        echo "  status - текущий режим"
        ;;
esac
